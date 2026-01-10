package org.bitspark.android.api;

import java.util.List;
import org.bitspark.android.beans.BrandBean;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Url;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface ApiService {
    @GET
    Call<List<BrandBean>> getBrands(@Url String str);
}
