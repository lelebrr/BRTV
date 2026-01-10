package com.google.android.gms.internal.cast;

import android.content.SharedPreferences;
import android.os.Looper;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.flac.FlacConstants;
import androidx.media3.extractor.ts.TsExtractor;
import com.alibaba.fastjson.asm.Opcodes;
import java.util.HashSet;
import java.util.Iterator;
import me.jessyan.autosize.BuildConfig;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l2 {

    /* renamed from: i, reason: collision with root package name */
    public static final v4.b f4298i = new v4.b("FeatureUsageAnalytics", null);

    /* renamed from: j, reason: collision with root package name */
    public static final String f4299j = "22.1.0";

    /* renamed from: k, reason: collision with root package name */
    public static l2 f4300k;

    /* renamed from: a, reason: collision with root package name */
    public final m1 f4301a;

    /* renamed from: b, reason: collision with root package name */
    public final SharedPreferences f4302b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4303c;

    /* renamed from: h, reason: collision with root package name */
    public long f4306h;
    public final HashSet f = new HashSet();

    /* renamed from: g, reason: collision with root package name */
    public final HashSet f4305g = new HashSet();

    /* renamed from: e, reason: collision with root package name */
    public final x0 f4304e = new x0(Looper.getMainLooper(), 0);
    public final z d = new z(3, this);

    public l2(SharedPreferences sharedPreferences, m1 m1Var, String str) {
        this.f4302b = sharedPreferences;
        this.f4301a = m1Var;
        this.f4303c = str;
    }

    public static void a(m2 m2Var) {
        l2 l2Var;
        if (!m1.f4314k || (l2Var = f4300k) == null) {
            return;
        }
        String string = Integer.toString(m2Var.f4352a);
        SharedPreferences sharedPreferences = l2Var.f4302b;
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        String strP = ea.q.p("feature_usage_timestamp_reported_feature_", string);
        if (!sharedPreferences.contains(strP)) {
            strP = ea.q.p("feature_usage_timestamp_detected_feature_", string);
        }
        editorEdit.putLong(strP, System.currentTimeMillis()).apply();
        l2Var.f.add(m2Var);
        l2Var.f4304e.post(l2Var.d);
    }

    public static m2 b(String str) {
        m2 m2Var = m2.DEVELOPER_FEATURE_FLAG_UNKNOWN;
        try {
            switch (Integer.parseInt(str)) {
                case 0:
                    break;
                case 1:
                    m2Var = m2.CAF_CAST_BUTTON;
                    break;
                case 2:
                    m2Var = m2.CAF_EXPANDED_CONTROLLER;
                    break;
                case 3:
                    m2Var = m2.CAF_MINI_CONTROLLER;
                    break;
                case 4:
                    m2Var = m2.CAF_CONTAINER_CONTROLLER;
                    break;
                case 5:
                    m2Var = m2.CAST_CONTEXT;
                    break;
                case 6:
                    m2Var = m2.IMAGE_CACHE;
                    break;
                case 7:
                    m2Var = m2.IMAGE_PICKER;
                    break;
                case 8:
                    m2Var = m2.AD_BREAK_PARSER;
                    break;
                case 9:
                    m2Var = m2.UI_STYLE;
                    break;
                case 10:
                    m2Var = m2.HARDWARE_VOLUME_BUTTON;
                    break;
                case 11:
                    m2Var = m2.NON_CAST_DEVICE_PROVIDER;
                    break;
                case 12:
                    m2Var = m2.PAUSE_CONTROLLER;
                    break;
                case 13:
                    m2Var = m2.SEEK_CONTROLLER;
                    break;
                case 14:
                    m2Var = m2.STREAM_VOLUME;
                    break;
                case 15:
                    m2Var = m2.UI_MEDIA_CONTROLLER;
                    break;
                case 16:
                    m2Var = m2.PLAYBACK_RATE_CONTROLLER;
                    break;
                case 17:
                    m2Var = m2.PRECACHE;
                    break;
                case 18:
                    m2Var = m2.INSTRUCTIONS_VIEW;
                    break;
                case 19:
                    m2Var = m2.OPTION_SUSPEND_SESSIONS_WHEN_BACKGROUNDED;
                    break;
                case 20:
                    m2Var = m2.OPTION_STOP_RECEIVER_APPLICATION_WHEN_ENDING_SESSION;
                    break;
                case 21:
                    m2Var = m2.OPTION_DISABLE_DISCOVERY_AUTOSTART;
                    break;
                case 22:
                    m2Var = m2.OPTION_DISABLE_ANALYTICS_LOGGING;
                    break;
                case 23:
                    m2Var = m2.OPTION_PHYSICAL_VOLUME_BUTTONS_WILL_CONTROL_DEVICE_VOLUME;
                    break;
                case 24:
                    m2Var = m2.CAF_EXPANDED_CONTROLLER_HIDE_STREAM_POSITION_CONTROLS_FOR_LIVE_CONTENT;
                    break;
                case 25:
                    m2Var = m2.CAF_EXPANDED_CONTROLLER_WITH_LIVE_CONTENT;
                    break;
                case 26:
                    m2Var = m2.REMOTE_MEDIA_CLIENT_LOAD_MEDIA_WITH_OPTIONS;
                    break;
                case 27:
                    m2Var = m2.REMOTE_MEDIA_CLIENT_QUEUE_LOAD_ITEMS_WITH_OPTIONS;
                    break;
                case 28:
                    m2Var = m2.REMOTE_MEDIA_CLIENT_LOAD_MEDIA_WITH_LOAD_REQUEST_DATA;
                    break;
                case 29:
                    m2Var = m2.LAUNCH_OPTION_ANDROID_RECEIVER_COMPATIBLE;
                    break;
                case 30:
                    m2Var = m2.CAST_CONTEXT_SET_LAUNCH_CREDENTIALS_DATA;
                    break;
                case 31:
                    m2Var = m2.START_DISCOVERY_AFTER_FIRST_TAP_ON_CAST_BUTTON;
                    break;
                case 32:
                    m2Var = m2.CAST_UNAVAILABLE_BUTTON_VISIBLE;
                    break;
                case 33:
                    m2Var = m2.CAST_DEFAULT_MEDIA_ROUTER_DIALOG;
                    break;
                case 34:
                    m2Var = m2.CAST_CUSTOM_MEDIA_ROUTER_DIALOG;
                    break;
                case 35:
                    m2Var = m2.CAST_OUTPUT_SWITCHER_ENABLED;
                    break;
                case TsExtractor.TS_STREAM_TYPE_H265 /* 36 */:
                    m2Var = m2.CAST_TRANSFER_TO_LOCAL_ENABLED;
                    break;
                case 37:
                    m2Var = m2.CAST_BUTTON_IS_TRIGGERED_DEFAULT_CAST_DIALOG_FALSE;
                    break;
                case FlacConstants.STREAM_INFO_BLOCK_SIZE /* 38 */:
                    m2Var = m2.CAST_BUTTON_DELEGATE;
                    break;
                case NalUnitUtil.H265_NAL_UNIT_TYPE_PREFIX_SEI /* 39 */:
                    m2Var = m2.CAST_BUTTON_DELEGATE_PRESENT_LNA_PERMISSION_CUSTOM_DIALOG;
                    break;
                case NalUnitUtil.H265_NAL_UNIT_TYPE_SUFFIX_SEI /* 40 */:
                    m2Var = m2.CAST_BUTTON_DELEGATE_PRESENT_CAST_STATE_CUSTOM_DIALOG;
                    break;
                case BuildConfig.VERSION_CODE /* 41 */:
                    m2Var = m2.CAST_TRANSFER_TO_LOCAL_USED;
                    break;
                case AacUtil.AUDIO_OBJECT_TYPE_AAC_XHE /* 42 */:
                    m2Var = m2.MEDIA_REQUEST_ITEM_MAP_HLS_SEGMENT_FORMAT_TO_STRING;
                    break;
                case 43:
                    m2Var = m2.MEDIA_REQUEST_ITEM_MAP_HLS_SEGMENT_FORMAT_STRING_TO_ENUM;
                    break;
                case 44:
                    m2Var = m2.HLS_SEGMENT_MAP_HLS_SEGMENT_FORMAT_TO_STRING;
                    break;
                case TsExtractor.TS_STREAM_TYPE_MHAS /* 45 */:
                    m2Var = m2.HLS_SEGMENT_MAP_HLS_SEGMENT_FORMAT_STRING_TO_ENUM;
                    break;
                case 46:
                    m2Var = m2.HLS_VIDEO_SEGMENT_MAP_HLS_VIDEO_SEGMENT_FORMAT_TO_STRING;
                    break;
                case 47:
                    m2Var = m2.HLS_VIDEO_SEGMENT_MAP_HLS_VIDEO_SEGMENT_FORMAT_STRING_TO_ENUM;
                    break;
                case NalUnitUtil.H265_NAL_UNIT_TYPE_UNSPECIFIED /* 48 */:
                    m2Var = m2.CAST_SLIDER_SET_AD_BLOCK_POSITIONS;
                    break;
                case Opcodes.V1_5 /* 49 */:
                    m2Var = m2.CAF_NOTIFICATION_SERVICE;
                    break;
                case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                    m2Var = m2.HARDWARE_VOLUME_BUTTON_PRESS;
                    break;
                case 51:
                    m2Var = m2.CAST_SDK_DEFAULT_DEVICE_DIALOG;
                    break;
                case 52:
                    m2Var = m2.CAST_SDK_CUSTOM_DEVICE_DIALOG;
                    break;
                case 53:
                    m2Var = m2.PERSISTENT_CAST_BUTTON_DISCOVERY_DISABLED_WITH_CONFLICT_TYPES;
                    break;
                case Opcodes.ISTORE /* 54 */:
                    m2Var = m2.CAST_DEVICE_DIALOG_FACTORY_INSTANTIATED;
                    break;
                case Opcodes.LSTORE /* 55 */:
                    m2Var = m2.CAF_MEDIA_NOTIFICATION_PROXY;
                    break;
                case Opcodes.FSTORE /* 56 */:
                    m2Var = m2.REMOTE_CONNECTION_MANAGER_ACQUIRED;
                    break;
                case Opcodes.DSTORE /* 57 */:
                    m2Var = m2.REMOTE_CONNECTION_CALLBACK_SET;
                    break;
                default:
                    m2Var = null;
                    break;
            }
        } catch (NumberFormatException unused) {
        }
        return m2Var;
    }

    public final void c(HashSet hashSet) {
        if (hashSet.isEmpty()) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.f4302b.edit();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            editorEdit.remove((String) it.next());
        }
        editorEdit.apply();
    }
}
