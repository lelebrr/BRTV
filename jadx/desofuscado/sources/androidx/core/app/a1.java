package androidx.core.app;

import android.app.Person;
import androidx.core.graphics.drawable.IconCompat;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a1 {
    public static b1 a(Person person) {
        CharSequence name = person.getName();
        IconCompat iconCompatC = person.getIcon() != null ? IconCompat.c(person.getIcon()) : null;
        String uri = person.getUri();
        String key = person.getKey();
        boolean zIsBot = person.isBot();
        boolean zIsImportant = person.isImportant();
        b1 b1Var = new b1();
        b1Var.f1153a = name;
        b1Var.f1154b = iconCompatC;
        b1Var.f1155c = uri;
        b1Var.d = key;
        b1Var.f1156e = zIsBot;
        b1Var.f = zIsImportant;
        return b1Var;
    }

    public static Person b(b1 b1Var) {
        Person.Builder name = new Person.Builder().setName(b1Var.f1153a);
        IconCompat iconCompat = b1Var.f1154b;
        return name.setIcon(iconCompat != null ? iconCompat.n(null) : null).setUri(b1Var.f1155c).setKey(b1Var.d).setBot(b1Var.f1156e).setImportant(b1Var.f).build();
    }
}
