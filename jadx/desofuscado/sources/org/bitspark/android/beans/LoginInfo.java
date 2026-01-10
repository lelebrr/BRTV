package org.bitspark.android.beans;

import java.io.Serializable;

/* loaded from: classes.dex */
public class LoginInfo implements Serializable {
    public int code;
    public KeysBean keys;
    public String result;

    public static class KeysBean {
        public String peer_id;
        public String session_key;
        public String token;
        public String user_id;
    }
}
