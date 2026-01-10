package v7;

import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import com.lzy.okgo.https.HttpsUtils;
import com.lzy.okgo.model.HttpHeaders;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.concurrent.ConcurrentLinkedQueue;
import javax.net.ssl.HttpsURLConnection;
import org.bitspark.android.utils.l;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class h extends d {
    @Override // v7.d
    public final f a(s2.c cVar, String str, String str2) throws IOException {
        byte[] bArr;
        int i6;
        b bVar = new b((short) (Math.random() * 65535.0d), str2);
        byte[] bArrA = bVar.a();
        HttpsUtils.SSLParams sslSocketFactory = HttpsUtils.getSslSocketFactory();
        l lVar = new l(1);
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(str).openConnection();
        httpsURLConnection.setHostnameVerifier(lVar);
        httpsURLConnection.setSSLSocketFactory(sslSocketFactory.sSLSocketFactory);
        int i10 = this.f10735c * 1000;
        httpsURLConnection.setConnectTimeout(i10);
        httpsURLConnection.setReadTimeout(i10);
        httpsURLConnection.setDoOutput(true);
        httpsURLConnection.setRequestMethod(HlsMediaPlaylist.Interstitial.CUE_TRIGGER_POST);
        httpsURLConnection.setRequestProperty("Content-Type", "application/dns-message");
        httpsURLConnection.setRequestProperty("Accept", "application/dns-message");
        httpsURLConnection.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, "");
        DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
        ((ConcurrentLinkedQueue) cVar.f9745b).add(new ua.a(httpsURLConnection, 3, dataOutputStream));
        dataOutputStream.write(bArrA);
        dataOutputStream.close();
        int responseCode = httpsURLConnection.getResponseCode();
        InputStream errorStream = null;
        if (responseCode != 200) {
            try {
                errorStream = httpsURLConnection.getErrorStream();
                if (errorStream != null && (i6 = errorStream.read((bArr = new byte[256]))) > 0) {
                    throw new IOException("DoH HTTP " + responseCode + " from " + str + ", errorBody=" + new String(bArr, 0, i6));
                }
            } catch (Exception unused) {
                if (errorStream != null) {
                }
            } catch (Throwable th) {
                if (errorStream != null) {
                    try {
                        errorStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
            if (errorStream != null) {
                try {
                    errorStream.close();
                } catch (IOException unused3) {
                }
            }
            throw new IOException("DoH HTTP " + responseCode + " from " + str);
        }
        try {
            InputStream inputStream = httpsURLConnection.getInputStream();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(Math.max(512, httpsURLConnection.getContentLength()));
            byte[] bArr2 = new byte[8192];
            int i11 = 0;
            while (true) {
                int i12 = inputStream.read(bArr2);
                if (i12 == -1) {
                    if (i11 > 0) {
                        f fVar = new f(str, 5, bVar, byteArrayOutputStream.toByteArray());
                        try {
                            inputStream.close();
                        } catch (IOException unused4) {
                        }
                        return fVar;
                    }
                    throw new IOException("DoH response empty from " + str);
                }
                if (i12 != 0) {
                    i11 += i12;
                    if (i11 > 1048576) {
                        throw new IOException("DoH response too large from " + str + ": " + i11);
                    }
                    byteArrayOutputStream.write(bArr2, 0, i12);
                }
            }
        } finally {
            if (0 != 0) {
                try {
                    errorStream.close();
                } catch (IOException unused5) {
                }
            }
        }
    }
}
