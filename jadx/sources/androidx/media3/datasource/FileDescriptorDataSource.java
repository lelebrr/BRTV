package androidx.media3.datasource;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public class FileDescriptorDataSource extends BaseDataSource {
    private static final Set<FileDescriptor> inUseFileDescriptors = Collections.newSetFromMap(new ConcurrentHashMap());
    private long bytesRemaining;
    private final FileDescriptor fileDescriptor;
    private FileInputStream inputStream;
    private final long length;
    private final long offset;
    private boolean opened;
    private Uri uri;

    public FileDescriptorDataSource(FileDescriptor fileDescriptor, long j10, long j11) {
        super(false);
        this.fileDescriptor = (FileDescriptor) Assertions.checkNotNull(fileDescriptor);
        this.offset = j10;
        this.length = j11;
    }

    private static void seekFileDescriptor(FileDescriptor fileDescriptor, long j10) throws DataSourceException, ErrnoException {
        try {
            Os.lseek(fileDescriptor, j10, OsConstants.SEEK_SET);
        } catch (ErrnoException e5) {
            throw new DataSourceException(e5, 2000);
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() throws DataSourceException {
        this.uri = null;
        inUseFileDescriptors.remove(this.fileDescriptor);
        try {
            try {
                FileInputStream fileInputStream = this.inputStream;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
            } catch (IOException e5) {
                throw new DataSourceException(e5, 2000);
            }
        } finally {
            this.inputStream = null;
            if (this.opened) {
                this.opened = false;
                transferEnded();
            }
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // androidx.media3.datasource.DataSource
    public long open(DataSpec dataSpec) throws IOException, ErrnoException {
        try {
            this.uri = dataSpec.uri;
            transferInitializing(dataSpec);
            if (!inUseFileDescriptors.add(this.fileDescriptor)) {
                throw new DataSourceException(new IllegalStateException("Attempted to re-use an already in-use file descriptor"), -2);
            }
            long j10 = this.length;
            if (j10 != -1 && dataSpec.position > j10) {
                throw new DataSourceException(2008);
            }
            seekFileDescriptor(this.fileDescriptor, this.offset + dataSpec.position);
            FileInputStream fileInputStream = new FileInputStream(this.fileDescriptor);
            this.inputStream = fileInputStream;
            long j11 = this.length;
            if (j11 == -1) {
                FileChannel channel = fileInputStream.getChannel();
                long size = channel.size();
                if (size == 0) {
                    this.bytesRemaining = -1L;
                } else {
                    long jPosition = size - channel.position();
                    this.bytesRemaining = jPosition;
                    if (jPosition < 0) {
                        throw new DataSourceException(2008);
                    }
                }
            } else {
                long j12 = j11 - dataSpec.position;
                this.bytesRemaining = j12;
                if (j12 < 0) {
                    throw new DataSourceException(2008);
                }
            }
            long jMin = dataSpec.length;
            if (jMin != -1) {
                long j13 = this.bytesRemaining;
                if (j13 != -1) {
                    jMin = Math.min(j13, jMin);
                }
                this.bytesRemaining = jMin;
            }
            this.opened = true;
            transferStarted(dataSpec);
            long j14 = dataSpec.length;
            return j14 != -1 ? j14 : this.bytesRemaining;
        } catch (DataSourceException e5) {
            throw e5;
        } catch (IOException e10) {
            throw new DataSourceException(e10, e10 instanceof FileNotFoundException ? PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND : 2000);
        }
    }

    @Override // androidx.media3.common.DataReader
    public int read(byte[] bArr, int i6, int i10) throws IOException {
        if (i10 == 0) {
            return 0;
        }
        long j10 = this.bytesRemaining;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            i10 = (int) Math.min(j10, i10);
        }
        try {
            int i11 = ((FileInputStream) Util.castNonNull(this.inputStream)).read(bArr, i6, i10);
            if (i11 == -1) {
                return -1;
            }
            long j11 = this.bytesRemaining;
            if (j11 != -1) {
                this.bytesRemaining = j11 - i11;
            }
            bytesTransferred(i11);
            return i11;
        } catch (IOException e5) {
            throw new DataSourceException(e5, 2000);
        }
    }
}
