package androidx.leanback.widget;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.media.SoundPool;
import android.os.Handler;
import android.speech.SpeechRecognizer;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class SearchBar extends RelativeLayout {

    /* renamed from: x, reason: collision with root package name */
    public static final /* synthetic */ int f1734x = 0;

    /* renamed from: a, reason: collision with root package name */
    public SearchEditText f1735a;

    /* renamed from: b, reason: collision with root package name */
    public SpeechOrbView f1736b;

    /* renamed from: c, reason: collision with root package name */
    public ImageView f1737c;
    public String d;

    /* renamed from: e, reason: collision with root package name */
    public String f1738e;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public Drawable f1739g;

    /* renamed from: h, reason: collision with root package name */
    public final Handler f1740h;

    /* renamed from: i, reason: collision with root package name */
    public final InputMethodManager f1741i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f1742j;

    /* renamed from: k, reason: collision with root package name */
    public Drawable f1743k;

    /* renamed from: l, reason: collision with root package name */
    public final int f1744l;

    /* renamed from: m, reason: collision with root package name */
    public final int f1745m;

    /* renamed from: n, reason: collision with root package name */
    public final int f1746n;

    /* renamed from: o, reason: collision with root package name */
    public final int f1747o;

    /* renamed from: p, reason: collision with root package name */
    public final int f1748p;

    /* renamed from: q, reason: collision with root package name */
    public final int f1749q;

    /* renamed from: r, reason: collision with root package name */
    public SpeechRecognizer f1750r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f1751s;

    /* renamed from: t, reason: collision with root package name */
    public SoundPool f1752t;

    /* renamed from: u, reason: collision with root package name */
    public final SparseIntArray f1753u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f1754v;

    /* renamed from: w, reason: collision with root package name */
    public final Context f1755w;

    public SearchBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void a() {
        if (this.f1754v) {
            return;
        }
        if (!hasFocus()) {
            requestFocus();
        }
        if (this.f1750r == null) {
            return;
        }
        if (getContext().checkCallingOrSelfPermission("android.permission.RECORD_AUDIO") != 0) {
            throw new IllegalStateException("android.permission.RECORD_AUDIO required for search");
        }
        this.f1754v = true;
        this.f1735a.setText("");
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        intent.putExtra("android.speech.extra.PARTIAL_RESULTS", true);
        this.f1750r.setRecognitionListener(new t0(this));
        this.f1751s = true;
        this.f1750r.startListening(intent);
    }

    public final void b() {
        if (this.f1754v) {
            this.f1735a.setText(this.d);
            this.f1735a.setHint(this.f1738e);
            this.f1754v = false;
            if (this.f1750r == null) {
                return;
            }
            this.f1736b.c();
            if (this.f1751s) {
                this.f1750r.cancel();
                this.f1751s = false;
            }
            this.f1750r.setRecognitionListener(null);
        }
    }

    public final void c() throws Resources.NotFoundException {
        String string = getResources().getString(R.string.lb_search_bar_hint);
        if (!TextUtils.isEmpty(this.f)) {
            string = this.f1736b.isFocused() ? getResources().getString(R.string.lb_search_bar_hint_with_title_speech, this.f) : getResources().getString(R.string.lb_search_bar_hint_with_title, this.f);
        } else if (this.f1736b.isFocused()) {
            string = getResources().getString(R.string.lb_search_bar_hint_speech);
        }
        this.f1738e = string;
        SearchEditText searchEditText = this.f1735a;
        if (searchEditText != null) {
            searchEditText.setHint(string);
        }
    }

    public final void d(boolean z7) {
        if (z7) {
            this.f1743k.setAlpha(this.f1749q);
            boolean zIsFocused = this.f1736b.isFocused();
            int i6 = this.f1747o;
            if (zIsFocused) {
                this.f1735a.setTextColor(i6);
                this.f1735a.setHintTextColor(i6);
            } else {
                this.f1735a.setTextColor(this.f1745m);
                this.f1735a.setHintTextColor(i6);
            }
        } else {
            this.f1743k.setAlpha(this.f1748p);
            this.f1735a.setTextColor(this.f1744l);
            this.f1735a.setHintTextColor(this.f1746n);
        }
        c();
    }

    public Drawable getBadgeDrawable() {
        return this.f1739g;
    }

    public CharSequence getHint() {
        return this.f1738e;
    }

    public String getTitle() {
        return this.f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1752t = new SoundPool(2, 1, 0);
        int[] iArr = {R.raw.lb_voice_failure, R.raw.lb_voice_open, R.raw.lb_voice_no_input, R.raw.lb_voice_success};
        for (int i6 = 0; i6 < 4; i6++) {
            int i10 = iArr[i6];
            this.f1753u.put(i10, this.f1752t.load(this.f1755w, i10, 1));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        b();
        this.f1752t.release();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onFinishInflate() throws Resources.NotFoundException {
        super.onFinishInflate();
        this.f1743k = ((RelativeLayout) findViewById(R.id.lb_search_bar_items)).getBackground();
        this.f1735a = (SearchEditText) findViewById(R.id.lb_search_text_editor);
        ImageView imageView = (ImageView) findViewById(R.id.lb_search_bar_badge);
        this.f1737c = imageView;
        Drawable drawable = this.f1739g;
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
        }
        this.f1735a.setOnFocusChangeListener(new o0(this, 0));
        this.f1735a.addTextChangedListener(new q0(this, new p0(this, 0)));
        this.f1735a.setOnKeyboardDismissListener(new q(this));
        this.f1735a.setOnEditorActionListener(new r0(this));
        this.f1735a.setPrivateImeOptions("escapeNorth,voiceDismiss");
        SpeechOrbView speechOrbView = (SpeechOrbView) findViewById(R.id.lb_search_bar_speech_orb);
        this.f1736b = speechOrbView;
        speechOrbView.setOnOrbClickedListener(new s0(this));
        this.f1736b.setOnFocusChangeListener(new o0(this, 1));
        d(hasFocus());
        c();
    }

    public void setBadgeDrawable(Drawable drawable) {
        this.f1739g = drawable;
        ImageView imageView = this.f1737c;
        if (imageView != null) {
            imageView.setImageDrawable(drawable);
            if (drawable != null) {
                this.f1737c.setVisibility(0);
            } else {
                this.f1737c.setVisibility(8);
            }
        }
    }

    @Override // android.view.View
    public void setNextFocusDownId(int i6) {
        this.f1736b.setNextFocusDownId(i6);
        this.f1735a.setNextFocusDownId(i6);
    }

    public void setSearchAffordanceColors(y0 y0Var) {
        SpeechOrbView speechOrbView = this.f1736b;
        if (speechOrbView != null) {
            speechOrbView.setNotListeningOrbColors(y0Var);
        }
    }

    public void setSearchAffordanceColorsInListening(y0 y0Var) {
        SpeechOrbView speechOrbView = this.f1736b;
        if (speechOrbView != null) {
            speechOrbView.setListeningOrbColors(y0Var);
        }
    }

    public void setSearchQuery(String str) {
        b();
        this.f1735a.setText(str);
        setSearchQueryInternal(str);
    }

    public void setSearchQueryInternal(String str) {
        if (TextUtils.equals(this.d, str)) {
            return;
        }
        this.d = str;
    }

    public void setSpeechRecognizer(SpeechRecognizer speechRecognizer) {
        b();
        SpeechRecognizer speechRecognizer2 = this.f1750r;
        if (speechRecognizer2 != null) {
            speechRecognizer2.setRecognitionListener(null);
            if (this.f1751s) {
                this.f1750r.cancel();
                this.f1751s = false;
            }
        }
        this.f1750r = speechRecognizer;
    }

    public void setTitle(String str) throws Resources.NotFoundException {
        this.f = str;
        c();
    }

    public SearchBar(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1740h = new Handler();
        this.f1742j = false;
        this.f1753u = new SparseIntArray();
        this.f1754v = false;
        this.f1755w = context;
        Resources resources = getResources();
        LayoutInflater.from(getContext()).inflate(R.layout.lb_search_bar, (ViewGroup) this, true);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.lb_search_bar_height));
        layoutParams.addRule(10, -1);
        setLayoutParams(layoutParams);
        setBackgroundColor(0);
        setClipChildren(false);
        this.d = "";
        this.f1741i = (InputMethodManager) context.getSystemService("input_method");
        this.f1745m = resources.getColor(R.color.lb_search_bar_text_speech_mode);
        this.f1744l = resources.getColor(R.color.lb_search_bar_text);
        this.f1749q = resources.getInteger(R.integer.lb_search_bar_speech_mode_background_alpha);
        this.f1748p = resources.getInteger(R.integer.lb_search_bar_text_mode_background_alpha);
        this.f1747o = resources.getColor(R.color.lb_search_bar_hint_speech_mode);
        this.f1746n = resources.getColor(R.color.lb_search_bar_hint);
    }

    public void setPermissionListener(v0 v0Var) {
    }

    public void setSearchBarListener(u0 u0Var) {
    }

    @Deprecated
    public void setSpeechRecognitionCallback(c1 c1Var) {
    }
}
