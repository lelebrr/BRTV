package androidx.appcompat.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import androidx.customview.view.AbsSavedState;
import androidx.media3.common.C;
import com.alibaba.fastjson.asm.Opcodes;
import com.p2elite.brtv2.R;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class SearchView extends LinearLayoutCompat implements j.b {

    /* renamed from: h0, reason: collision with root package name */
    public static final a3 f584h0;
    public final Rect A;
    public final int[] B;
    public final int[] C;
    public final ImageView D;
    public final Drawable E;
    public final int F;
    public final int G;
    public final Intent H;
    public final Intent I;
    public final CharSequence J;
    public View.OnFocusChangeListener K;
    public View.OnClickListener L;
    public boolean M;
    public boolean N;
    public t0.b O;
    public boolean P;
    public CharSequence Q;
    public boolean R;
    public boolean S;
    public int T;
    public boolean U;
    public CharSequence V;
    public boolean W;

    /* renamed from: b0, reason: collision with root package name */
    public int f585b0;

    /* renamed from: c0, reason: collision with root package name */
    public SearchableInfo f586c0;

    /* renamed from: d0, reason: collision with root package name */
    public Bundle f587d0;

    /* renamed from: e0, reason: collision with root package name */
    public final q2 f588e0;

    /* renamed from: f0, reason: collision with root package name */
    public final q2 f589f0;

    /* renamed from: g0, reason: collision with root package name */
    public final WeakHashMap f590g0;

    /* renamed from: p, reason: collision with root package name */
    public final SearchAutoComplete f591p;

    /* renamed from: q, reason: collision with root package name */
    public final View f592q;

    /* renamed from: r, reason: collision with root package name */
    public final View f593r;

    /* renamed from: s, reason: collision with root package name */
    public final View f594s;

    /* renamed from: t, reason: collision with root package name */
    public final ImageView f595t;

    /* renamed from: u, reason: collision with root package name */
    public final ImageView f596u;

    /* renamed from: v, reason: collision with root package name */
    public final ImageView f597v;

    /* renamed from: w, reason: collision with root package name */
    public final ImageView f598w;

    /* renamed from: x, reason: collision with root package name */
    public final View f599x;

    /* renamed from: y, reason: collision with root package name */
    public d3 f600y;

    /* renamed from: z, reason: collision with root package name */
    public final Rect f601z;

    /* compiled from: MyApplication */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new b3();

        /* renamed from: c, reason: collision with root package name */
        public boolean f602c;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f602c = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        public final String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f602c + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            super.writeToParcel(parcel, i6);
            parcel.writeValue(Boolean.valueOf(this.f602c));
        }
    }

    /* compiled from: MyApplication */
    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {

        /* renamed from: e, reason: collision with root package name */
        public int f603e;
        public SearchView f;

        /* renamed from: g, reason: collision with root package name */
        public boolean f604g;

        /* renamed from: h, reason: collision with root package name */
        public final c3 f605h;

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i6 = configuration.screenWidthDp;
            int i10 = configuration.screenHeightDp;
            if (i6 >= 960 && i10 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i6 >= 600) {
                return 192;
            }
            if (i6 < 640 || i10 < 480) {
                return Opcodes.IF_ICMPNE;
            }
            return 192;
        }

        public final void a() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (Build.VERSION.SDK_INT >= 29) {
                w2.b(this, 1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            a3 a3Var = SearchView.f584h0;
            a3Var.getClass();
            a3.a();
            Method method = a3Var.f666c;
            if (method != null) {
                try {
                    method.invoke(this, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public final boolean enoughToFilter() {
            return this.f603e <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f604g) {
                c3 c3Var = this.f605h;
                removeCallbacks(c3Var);
                post(c3Var);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override // android.view.View
        public final void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onFocusChanged(boolean z7, int i6, Rect rect) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            super.onFocusChanged(z7, i6, rect);
            SearchView searchView = this.f;
            searchView.y(searchView.N);
            searchView.post(searchView.f588e0);
            if (searchView.f591p.hasFocus()) {
                searchView.n();
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final boolean onKeyPreIme(int i6, KeyEvent keyEvent) {
            if (i6 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i6, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onWindowFocusChanged(boolean z7) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            super.onWindowFocusChanged(z7);
            if (z7 && this.f.hasFocus() && getVisibility() == 0) {
                this.f604g = true;
                Context context = getContext();
                a3 a3Var = SearchView.f584h0;
                if (context.getResources().getConfiguration().orientation == 2) {
                    a();
                }
            }
        }

        public void setImeVisibility(boolean z7) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            c3 c3Var = this.f605h;
            if (!z7) {
                this.f604g = false;
                removeCallbacks(c3Var);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f604g = true;
                    return;
                }
                this.f604g = false;
                removeCallbacks(c3Var);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        public void setSearchView(SearchView searchView) {
            this.f = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i6) {
            super.setThreshold(i6);
            this.f603e = i6;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i6) {
            super(context, attributeSet, i6);
            this.f605h = new c3(this);
            this.f603e = getThreshold();
        }

        @Override // android.widget.AutoCompleteTextView
        public final void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public final void replaceText(CharSequence charSequence) {
        }
    }

    static {
        a3 a3Var = null;
        if (Build.VERSION.SDK_INT < 29) {
            a3 a3Var2 = new a3();
            a3Var2.f664a = null;
            a3Var2.f665b = null;
            a3Var2.f666c = null;
            a3.a();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", null);
                a3Var2.f664a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", null);
                a3Var2.f665b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                a3Var2.f666c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
            a3Var = a3Var2;
        }
        f584h0 = a3Var;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
    }

    private void setQuery(CharSequence charSequence) {
        SearchAutoComplete searchAutoComplete = this.f591p;
        searchAutoComplete.setText(charSequence);
        searchAutoComplete.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    @Override // j.b
    public final void b() {
        if (this.W) {
            return;
        }
        this.W = true;
        SearchAutoComplete searchAutoComplete = this.f591p;
        int imeOptions = searchAutoComplete.getImeOptions();
        this.f585b0 = imeOptions;
        searchAutoComplete.setImeOptions(imeOptions | 33554432);
        searchAutoComplete.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void clearFocus() {
        this.S = true;
        super.clearFocus();
        SearchAutoComplete searchAutoComplete = this.f591p;
        searchAutoComplete.clearFocus();
        searchAutoComplete.setImeVisibility(false);
        this.S = false;
    }

    @Override // j.b
    public final void e() {
        SearchAutoComplete searchAutoComplete = this.f591p;
        searchAutoComplete.setText("");
        searchAutoComplete.setSelection(searchAutoComplete.length());
        this.V = "";
        clearFocus();
        y(true);
        searchAutoComplete.setImeOptions(this.f585b0);
        this.W = false;
    }

    public int getImeOptions() {
        return this.f591p.getImeOptions();
    }

    public int getInputType() {
        return this.f591p.getInputType();
    }

    public int getMaxWidth() {
        return this.T;
    }

    public CharSequence getQuery() {
        return this.f591p.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.Q;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.f586c0;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.J : getContext().getText(this.f586c0.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.G;
    }

    public int getSuggestionRowLayout() {
        return this.F;
    }

    public t0.b getSuggestionsAdapter() {
        return this.O;
    }

    public final Intent l(String str, Uri uri, String str2, String str3) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.V);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f587d0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        intent.setComponent(this.f586c0.getSearchActivity());
        return intent;
    }

    public final Intent m(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f587d0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    public final void n() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i6 = Build.VERSION.SDK_INT;
        SearchAutoComplete searchAutoComplete = this.f591p;
        if (i6 >= 29) {
            w2.a(searchAutoComplete);
            return;
        }
        a3 a3Var = f584h0;
        a3Var.getClass();
        a3.a();
        Method method = a3Var.f664a;
        if (method != null) {
            try {
                method.invoke(searchAutoComplete, null);
            } catch (Exception unused) {
            }
        }
        a3Var.getClass();
        a3.a();
        Method method2 = a3Var.f665b;
        if (method2 != null) {
            try {
                method2.invoke(searchAutoComplete, null);
            } catch (Exception unused2) {
            }
        }
    }

    public final void o() {
        SearchAutoComplete searchAutoComplete = this.f591p;
        if (!TextUtils.isEmpty(searchAutoComplete.getText())) {
            searchAutoComplete.setText("");
            searchAutoComplete.requestFocus();
            searchAutoComplete.setImeVisibility(true);
        } else if (this.M) {
            clearFocus();
            y(true);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f588e0);
        post(this.f589f0);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        super.onLayout(z7, i6, i10, i11, i12);
        if (z7) {
            int[] iArr = this.B;
            SearchAutoComplete searchAutoComplete = this.f591p;
            searchAutoComplete.getLocationInWindow(iArr);
            int[] iArr2 = this.C;
            getLocationInWindow(iArr2);
            int i13 = iArr[1] - iArr2[1];
            int i14 = iArr[0] - iArr2[0];
            int width = searchAutoComplete.getWidth() + i14;
            int height = searchAutoComplete.getHeight() + i13;
            Rect rect = this.f601z;
            rect.set(i14, i13, width, height);
            int i15 = rect.left;
            int i16 = rect.right;
            int i17 = i12 - i10;
            Rect rect2 = this.A;
            rect2.set(i15, 0, i16, i17);
            d3 d3Var = this.f600y;
            if (d3Var == null) {
                d3 d3Var2 = new d3(rect2, rect, searchAutoComplete);
                this.f600y = d3Var2;
                setTouchDelegate(d3Var2);
            } else {
                d3Var.f686b.set(rect2);
                Rect rect3 = d3Var.d;
                rect3.set(rect2);
                int i18 = -d3Var.f688e;
                rect3.inset(i18, i18);
                d3Var.f687c.set(rect);
            }
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public final void onMeasure(int i6, int i10) {
        int i11;
        if (this.N) {
            super.onMeasure(i6, i10);
            return;
        }
        int mode = View.MeasureSpec.getMode(i6);
        int size = View.MeasureSpec.getSize(i6);
        if (mode == Integer.MIN_VALUE) {
            int i12 = this.T;
            size = i12 > 0 ? Math.min(i12, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.T;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i11 = this.T) > 0) {
            size = Math.min(i11, size);
        }
        int mode2 = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i10);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f1319a);
        y(savedState.f602c);
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f602c = this.N;
        return savedState;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z7) {
        super.onWindowFocusChanged(z7);
        post(this.f588e0);
    }

    public final void p(int i6) {
        int position;
        String strH;
        Cursor cursor = this.O.f10057c;
        if (cursor != null && cursor.moveToPosition(i6)) {
            Intent intentL = null;
            try {
                int i10 = f3.f698x;
                String strH2 = f3.h(cursor, cursor.getColumnIndex("suggest_intent_action"));
                if (strH2 == null) {
                    strH2 = this.f586c0.getSuggestIntentAction();
                }
                if (strH2 == null) {
                    strH2 = "android.intent.action.SEARCH";
                }
                String strH3 = f3.h(cursor, cursor.getColumnIndex("suggest_intent_data"));
                if (strH3 == null) {
                    strH3 = this.f586c0.getSuggestIntentData();
                }
                if (strH3 != null && (strH = f3.h(cursor, cursor.getColumnIndex("suggest_intent_data_id"))) != null) {
                    strH3 = strH3 + "/" + Uri.encode(strH);
                }
                intentL = l(strH2, strH3 == null ? null : Uri.parse(strH3), f3.h(cursor, cursor.getColumnIndex("suggest_intent_extra_data")), f3.h(cursor, cursor.getColumnIndex("suggest_intent_query")));
            } catch (RuntimeException e5) {
                try {
                    position = cursor.getPosition();
                } catch (RuntimeException unused) {
                    position = -1;
                }
                Log.w("SearchView", "Search suggestions cursor at row " + position + " returned exception.", e5);
            }
            if (intentL != null) {
                try {
                    getContext().startActivity(intentL);
                } catch (RuntimeException e10) {
                    Log.e("SearchView", "Failed launch activity: " + intentL, e10);
                }
            }
        }
        SearchAutoComplete searchAutoComplete = this.f591p;
        searchAutoComplete.setImeVisibility(false);
        searchAutoComplete.dismissDropDown();
    }

    public final void q(int i6) {
        Editable text = this.f591p.getText();
        Cursor cursor = this.O.f10057c;
        if (cursor == null) {
            return;
        }
        if (!cursor.moveToPosition(i6)) {
            setQuery(text);
            return;
        }
        String strC = this.O.c(cursor);
        if (strC != null) {
            setQuery(strC);
        } else {
            setQuery(text);
        }
    }

    public final void r(CharSequence charSequence) {
        setQuery(charSequence);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean requestFocus(int i6, Rect rect) {
        if (this.S || !isFocusable()) {
            return false;
        }
        if (this.N) {
            return super.requestFocus(i6, rect);
        }
        boolean zRequestFocus = this.f591p.requestFocus(i6, rect);
        if (zRequestFocus) {
            y(false);
        }
        return zRequestFocus;
    }

    public final void s() {
        SearchAutoComplete searchAutoComplete = this.f591p;
        Editable text = searchAutoComplete.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        if (this.f586c0 != null) {
            getContext().startActivity(l("android.intent.action.SEARCH", null, null, text.toString()));
        }
        searchAutoComplete.setImeVisibility(false);
        searchAutoComplete.dismissDropDown();
    }

    public void setAppSearchData(Bundle bundle) {
        this.f587d0 = bundle;
    }

    public void setIconified(boolean z7) {
        if (z7) {
            o();
            return;
        }
        y(false);
        SearchAutoComplete searchAutoComplete = this.f591p;
        searchAutoComplete.requestFocus();
        searchAutoComplete.setImeVisibility(true);
        View.OnClickListener onClickListener = this.L;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public void setIconifiedByDefault(boolean z7) {
        if (this.M == z7) {
            return;
        }
        this.M = z7;
        y(z7);
        v();
    }

    public void setImeOptions(int i6) {
        this.f591p.setImeOptions(i6);
    }

    public void setInputType(int i6) {
        this.f591p.setInputType(i6);
    }

    public void setMaxWidth(int i6) {
        this.T = i6;
        requestLayout();
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.K = onFocusChangeListener;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.L = onClickListener;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.Q = charSequence;
        v();
    }

    public void setQueryRefinementEnabled(boolean z7) {
        this.R = z7;
        t0.b bVar = this.O;
        if (bVar instanceof f3) {
            ((f3) bVar).f707p = z7 ? 2 : 1;
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.f586c0 = searchableInfo;
        Intent intent = null;
        SearchAutoComplete searchAutoComplete = this.f591p;
        if (searchableInfo != null) {
            searchAutoComplete.setThreshold(searchableInfo.getSuggestThreshold());
            searchAutoComplete.setImeOptions(this.f586c0.getImeOptions());
            int inputType = this.f586c0.getInputType();
            if ((inputType & 15) == 1) {
                inputType &= -65537;
                if (this.f586c0.getSuggestAuthority() != null) {
                    inputType |= 589824;
                }
            }
            searchAutoComplete.setInputType(inputType);
            t0.b bVar = this.O;
            if (bVar != null) {
                bVar.b(null);
            }
            if (this.f586c0.getSuggestAuthority() != null) {
                f3 f3Var = new f3(getContext(), this, this.f586c0, this.f590g0);
                this.O = f3Var;
                searchAutoComplete.setAdapter(f3Var);
                ((f3) this.O).f707p = this.R ? 2 : 1;
            }
            v();
        }
        SearchableInfo searchableInfo2 = this.f586c0;
        boolean z7 = false;
        if (searchableInfo2 != null && searchableInfo2.getVoiceSearchEnabled()) {
            if (this.f586c0.getVoiceSearchLaunchWebSearch()) {
                intent = this.H;
            } else if (this.f586c0.getVoiceSearchLaunchRecognizer()) {
                intent = this.I;
            }
            if (intent != null) {
                z7 = getContext().getPackageManager().resolveActivity(intent, C.DEFAULT_BUFFER_SEGMENT_SIZE) != null;
            }
        }
        this.U = z7;
        if (z7) {
            searchAutoComplete.setPrivateImeOptions("nm");
        }
        y(this.N);
    }

    public void setSubmitButtonEnabled(boolean z7) {
        this.P = z7;
        y(this.N);
    }

    public void setSuggestionsAdapter(t0.b bVar) {
        this.O = bVar;
        this.f591p.setAdapter(bVar);
    }

    public final void t() {
        boolean zIsEmpty = TextUtils.isEmpty(this.f591p.getText());
        int i6 = (!zIsEmpty || (this.M && !this.W)) ? 0 : 8;
        ImageView imageView = this.f597v;
        imageView.setVisibility(i6);
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            drawable.setState(!zIsEmpty ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    public final void u() {
        int[] iArr = this.f591p.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f593r.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f594s.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public final void v() {
        Drawable drawable;
        CharSequence queryHint = getQueryHint();
        if (queryHint == null) {
            queryHint = "";
        }
        boolean z7 = this.M;
        SearchAutoComplete searchAutoComplete = this.f591p;
        if (z7 && (drawable = this.E) != null) {
            int textSize = (int) (searchAutoComplete.getTextSize() * 1.25d);
            drawable.setBounds(0, 0, textSize, textSize);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(drawable), 1, 2, 33);
            spannableStringBuilder.append(queryHint);
            queryHint = spannableStringBuilder;
        }
        searchAutoComplete.setHint(queryHint);
    }

    public final void w() {
        this.f594s.setVisibility(((this.P || this.U) && !this.N && (this.f596u.getVisibility() == 0 || this.f598w.getVisibility() == 0)) ? 0 : 8);
    }

    public final void x(boolean z7) {
        boolean z10 = this.P;
        this.f596u.setVisibility((!z10 || !(z10 || this.U) || this.N || !hasFocus() || (!z7 && this.U)) ? 8 : 0);
    }

    public final void y(boolean z7) {
        this.N = z7;
        int i6 = 8;
        int i10 = z7 ? 0 : 8;
        boolean zIsEmpty = TextUtils.isEmpty(this.f591p.getText());
        this.f595t.setVisibility(i10);
        x(!zIsEmpty);
        this.f592q.setVisibility(z7 ? 8 : 0);
        ImageView imageView = this.D;
        imageView.setVisibility((imageView.getDrawable() == null || this.M) ? 8 : 0);
        t();
        if (this.U && !this.N && zIsEmpty) {
            this.f596u.setVisibility(8);
            i6 = 0;
        }
        this.f598w.setVisibility(i6);
        w();
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f601z = new Rect();
        this.A = new Rect();
        this.B = new int[2];
        this.C = new int[2];
        this.f588e0 = new q2(this, 0);
        this.f589f0 = new q2(this, 1);
        this.f590g0 = new WeakHashMap();
        t2 t2Var = new t2(this);
        u2 u2Var = new u2(this);
        v2 v2Var = new v2(this);
        int i10 = 1;
        k0 k0Var = new k0(i10, this);
        w1 w1Var = new w1(i10, this);
        p2 p2Var = new p2(0, this);
        int[] iArr = e.a.f6366v;
        a1.b bVarC = a1.b.C(context, attributeSet, iArr, i6);
        n0.s0.p(this, context, iArr, attributeSet, (TypedArray) bVarC.f48c, i6, 0);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        TypedArray typedArray = (TypedArray) bVarC.f48c;
        layoutInflaterFrom.inflate(typedArray.getResourceId(9, R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.f591p = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f592q = findViewById(R.id.search_edit_frame);
        View viewFindViewById = findViewById(R.id.search_plate);
        this.f593r = viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.submit_area);
        this.f594s = viewFindViewById2;
        ImageView imageView = (ImageView) findViewById(R.id.search_button);
        this.f595t = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.search_go_btn);
        this.f596u = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R.id.search_close_btn);
        this.f597v = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R.id.search_voice_btn);
        this.f598w = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R.id.search_mag_icon);
        this.D = imageView5;
        viewFindViewById.setBackground(bVarC.t(10));
        viewFindViewById2.setBackground(bVarC.t(14));
        imageView.setImageDrawable(bVarC.t(13));
        imageView2.setImageDrawable(bVarC.t(7));
        imageView3.setImageDrawable(bVarC.t(4));
        imageView4.setImageDrawable(bVarC.t(16));
        imageView5.setImageDrawable(bVarC.t(13));
        this.E = bVarC.t(12);
        r4.b.L(imageView, getResources().getString(R.string.abc_searchview_description_search));
        this.F = typedArray.getResourceId(15, R.layout.abc_search_dropdown_item_icons_2line);
        this.G = typedArray.getResourceId(5, 0);
        imageView.setOnClickListener(t2Var);
        imageView3.setOnClickListener(t2Var);
        imageView2.setOnClickListener(t2Var);
        imageView4.setOnClickListener(t2Var);
        searchAutoComplete.setOnClickListener(t2Var);
        searchAutoComplete.addTextChangedListener(p2Var);
        searchAutoComplete.setOnEditorActionListener(v2Var);
        searchAutoComplete.setOnItemClickListener(k0Var);
        searchAutoComplete.setOnItemSelectedListener(w1Var);
        searchAutoComplete.setOnKeyListener(u2Var);
        searchAutoComplete.setOnFocusChangeListener(new r2(0, this));
        setIconifiedByDefault(typedArray.getBoolean(8, true));
        int dimensionPixelSize = typedArray.getDimensionPixelSize(1, -1);
        if (dimensionPixelSize != -1) {
            setMaxWidth(dimensionPixelSize);
        }
        this.J = typedArray.getText(6);
        this.Q = typedArray.getText(11);
        int i11 = typedArray.getInt(3, -1);
        if (i11 != -1) {
            setImeOptions(i11);
        }
        int i12 = typedArray.getInt(2, -1);
        if (i12 != -1) {
            setInputType(i12);
        }
        setFocusable(typedArray.getBoolean(0, true));
        bVarC.F();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.H = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.I = intent2;
        intent2.addFlags(268435456);
        View viewFindViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.f599x = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.addOnLayoutChangeListener(new s2(0, this));
        }
        y(this.M);
        v();
    }

    public void setOnCloseListener(x2 x2Var) {
    }

    public void setOnQueryTextListener(y2 y2Var) {
    }

    public void setOnSuggestionListener(z2 z2Var) {
    }
}
