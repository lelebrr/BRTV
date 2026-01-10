package me.jessyan.autosize;

import android.app.Activity;
import java.util.Locale;
import me.jessyan.autosize.external.ExternalAdaptInfo;
import me.jessyan.autosize.internal.CancelAdapt;
import me.jessyan.autosize.internal.CustomAdapt;
import me.jessyan.autosize.utils.AutoSizeLog;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class DefaultAutoAdaptStrategy implements AutoAdaptStrategy {
    @Override // me.jessyan.autosize.AutoAdaptStrategy
    public void applyAdapt(Object obj, Activity activity) {
        if (AutoSizeConfig.getInstance().getExternalAdaptManager().isRun()) {
            if (AutoSizeConfig.getInstance().getExternalAdaptManager().isCancelAdapt(obj.getClass())) {
                Locale locale = Locale.ENGLISH;
                AutoSizeLog.w(obj.getClass().getName().concat(" canceled the adaptation!"));
                AutoSize.cancelAdapt(activity);
                return;
            }
            ExternalAdaptInfo externalAdaptInfoOfActivity = AutoSizeConfig.getInstance().getExternalAdaptManager().getExternalAdaptInfoOfActivity(obj.getClass());
            if (externalAdaptInfoOfActivity != null) {
                Locale locale2 = Locale.ENGLISH;
                AutoSizeLog.d(obj.getClass().getName() + " used " + ExternalAdaptInfo.class.getName() + " for adaptation!");
                AutoSize.autoConvertDensityOfExternalAdaptInfo(activity, externalAdaptInfoOfActivity);
                return;
            }
        }
        if (obj instanceof CancelAdapt) {
            Locale locale3 = Locale.ENGLISH;
            AutoSizeLog.w(obj.getClass().getName().concat(" canceled the adaptation!"));
            AutoSize.cancelAdapt(activity);
            return;
        }
        if (!(obj instanceof CustomAdapt)) {
            Locale locale4 = Locale.ENGLISH;
            AutoSizeLog.d(obj.getClass().getName().concat(" used the global configuration."));
            AutoSize.autoConvertDensityOfGlobal(activity);
            return;
        }
        Locale locale5 = Locale.ENGLISH;
        AutoSizeLog.d(obj.getClass().getName() + " implemented by " + CustomAdapt.class.getName() + "!");
        AutoSize.autoConvertDensityOfCustomAdapt(activity, (CustomAdapt) obj);
    }
}
