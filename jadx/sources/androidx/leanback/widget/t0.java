package androidx.leanback.widget;

import android.animation.ObjectAnimator;
import android.os.Bundle;
import android.speech.RecognitionListener;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.regex.Matcher;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t0 implements RecognitionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchBar f1926a;

    public t0(SearchBar searchBar) {
        this.f1926a = searchBar;
    }

    @Override // android.speech.RecognitionListener
    public final void onError(int i6) {
        switch (i6) {
            case 1:
                int i10 = SearchBar.f1734x;
                Log.w("SearchBar", "recognizer network timeout");
                break;
            case 2:
                int i11 = SearchBar.f1734x;
                Log.w("SearchBar", "recognizer network error");
                break;
            case 3:
                int i12 = SearchBar.f1734x;
                Log.w("SearchBar", "recognizer audio error");
                break;
            case 4:
                int i13 = SearchBar.f1734x;
                Log.w("SearchBar", "recognizer server error");
                break;
            case 5:
                int i14 = SearchBar.f1734x;
                Log.w("SearchBar", "recognizer client error");
                break;
            case 6:
                int i15 = SearchBar.f1734x;
                Log.w("SearchBar", "recognizer speech timeout");
                break;
            case 7:
                int i16 = SearchBar.f1734x;
                Log.w("SearchBar", "recognizer no match");
                break;
            case 8:
                int i17 = SearchBar.f1734x;
                Log.w("SearchBar", "recognizer busy");
                break;
            case 9:
                int i18 = SearchBar.f1734x;
                Log.w("SearchBar", "recognizer insufficient permissions");
                break;
            default:
                int i19 = SearchBar.f1734x;
                Log.d("SearchBar", "recognizer other error");
                break;
        }
        SearchBar searchBar = this.f1926a;
        searchBar.b();
        searchBar.f1740h.post(new n0(R.raw.lb_voice_failure, 0, searchBar));
    }

    @Override // android.speech.RecognitionListener
    public final void onPartialResults(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("results_recognition");
        if (stringArrayList == null || stringArrayList.size() == 0) {
            return;
        }
        String str = stringArrayList.get(0);
        String str2 = stringArrayList.size() > 1 ? stringArrayList.get(1) : null;
        SearchEditText searchEditText = this.f1926a.f1735a;
        searchEditText.getClass();
        if (str == null) {
            str = "";
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        if (str2 != null) {
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) str2);
            Matcher matcher = StreamingTextView.f.matcher(str2);
            while (matcher.find()) {
                int iStart = matcher.start() + length;
                spannableStringBuilder.setSpan(new g1(searchEditText, str2.charAt(matcher.start()), iStart), iStart, matcher.end() + length, 33);
            }
        }
        searchEditText.d = Math.max(str.length(), searchEditText.d);
        searchEditText.setText(new SpannedString(spannableStringBuilder));
        searchEditText.bringPointIntoView(searchEditText.length());
        ObjectAnimator objectAnimator = searchEditText.f1796e;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        int streamPosition = searchEditText.getStreamPosition();
        int length2 = searchEditText.length();
        int i6 = length2 - streamPosition;
        if (i6 > 0) {
            if (searchEditText.f1796e == null) {
                ObjectAnimator objectAnimator2 = new ObjectAnimator();
                searchEditText.f1796e = objectAnimator2;
                objectAnimator2.setTarget(searchEditText);
                searchEditText.f1796e.setProperty(StreamingTextView.f1792g);
            }
            searchEditText.f1796e.setIntValues(streamPosition, length2);
            searchEditText.f1796e.setDuration(i6 * 50);
            searchEditText.f1796e.start();
        }
    }

    @Override // android.speech.RecognitionListener
    public final void onReadyForSpeech(Bundle bundle) {
        SearchBar searchBar = this.f1926a;
        SpeechOrbView speechOrbView = searchBar.f1736b;
        speechOrbView.setOrbColors(speechOrbView.f1788u);
        speechOrbView.setOrbIcon(speechOrbView.getResources().getDrawable(R.drawable.lb_ic_search_mic));
        speechOrbView.a(true);
        speechOrbView.f1768m = false;
        speechOrbView.b();
        View view = speechOrbView.f1760c;
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        speechOrbView.f1790w = 0;
        speechOrbView.f1791x = true;
        searchBar.f1740h.post(new n0(R.raw.lb_voice_open, 0, searchBar));
    }

    @Override // android.speech.RecognitionListener
    public final void onResults(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("results_recognition");
        SearchBar searchBar = this.f1926a;
        if (stringArrayList != null) {
            String str = stringArrayList.get(0);
            searchBar.d = str;
            searchBar.f1735a.setText(str);
            TextUtils.isEmpty(searchBar.d);
        }
        searchBar.b();
        searchBar.f1740h.post(new n0(R.raw.lb_voice_success, 0, searchBar));
    }

    @Override // android.speech.RecognitionListener
    public final void onRmsChanged(float f) {
        this.f1926a.f1736b.setSoundLevel(f < 0.0f ? 0 : (int) (f * 10.0f));
    }

    @Override // android.speech.RecognitionListener
    public final void onBeginningOfSpeech() {
    }

    @Override // android.speech.RecognitionListener
    public final void onEndOfSpeech() {
    }

    @Override // android.speech.RecognitionListener
    public final void onBufferReceived(byte[] bArr) {
    }

    @Override // android.speech.RecognitionListener
    public final void onEvent(int i6, Bundle bundle) {
    }
}
