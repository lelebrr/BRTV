package g9;

import com.bumptech.glide.c;
import j9.i;
import java.io.File;
import r9.f;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a extends c {
    public static File p(File file) {
        int length;
        File file2;
        int iB0;
        File file3 = new File("image_cache");
        String path = file3.getPath();
        i.e(path, "getPath(...)");
        char c5 = File.separatorChar;
        int iB02 = f.b0(path, c5, 0, false, 4);
        if (iB02 != 0) {
            length = (iB02 <= 0 || path.charAt(iB02 + (-1)) != ':') ? (iB02 == -1 && f.Y(path, ':')) ? path.length() : 0 : iB02 + 1;
        } else if (path.length() <= 1 || path.charAt(1) != c5 || (iB0 = f.b0(path, c5, 2, false, 4)) < 0) {
            length = 1;
        } else {
            int iB03 = f.b0(path, c5, iB0 + 1, false, 4);
            length = iB03 >= 0 ? iB03 + 1 : path.length();
        }
        if (length > 0) {
            return file3;
        }
        String string = file.toString();
        i.e(string, "toString(...)");
        if ((string.length() == 0) || f.Y(string, c5)) {
            file2 = new File(string + file3);
        } else {
            file2 = new File(string + c5 + file3);
        }
        return file2;
    }
}
