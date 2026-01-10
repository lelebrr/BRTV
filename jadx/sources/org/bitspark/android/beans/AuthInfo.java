package org.bitspark.android.beans;

import com.nmmedit.protect.NativeUtil;
import java.io.Serializable;

/* loaded from: classes.dex */
public class AuthInfo implements Serializable {
    public int code;
    public KeysBean keys;
    public String result;
    public ServiceBean service;
    public UserBean user;

    public static class KeysBean {
        public String peer_id;
        public String session_key;
        public String user_id;
    }

    public static class ServiceBean {
        public String auth_url;
        public String auth_url_sdk;
        public String brand_url;
        public String ch_url;
        public String domain_suffix;
        public boolean enabledAppManager;
        public boolean enabledLive;
        public boolean enabledPlayback;
        public boolean enabledVoD;
        public String epg_url;
        public String event_url;
        public String logo;
        public String message_url;
        public String mk_broker;
        public String name;
        public String reseller;
        public String telephone;
        public String token;
        public int type;
        public String update_url;
        public String vod_search_url;
        public String vod_tag_url;
        public String vod_url;
        public String website;
        public String wsguard_url;

        static {
            NativeUtil.classesInit0(38);
        }

        public native String toString();
    }

    public static class UserBean {
        public long EndTime;
        public long StartTime;
        public String reg_time;
        public int user_id;
        public String user_name;
        public int user_status;
    }
}
