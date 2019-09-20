.class Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;
.super Ljava/lang/Object;
.source "PreferenceListener.java"

# interfaces
.implements Lcom/google/inject/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lroboguice/inject/PreferenceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreferenceMembersInjector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/MembersInjector<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected annotation:Lroboguice/inject/InjectPreference;

.field protected contextProvider:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected field:Ljava/lang/reflect/Field;

.field protected instanceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected scope:Lroboguice/inject/ContextScope;

.field final synthetic this$0:Lroboguice/inject/PreferenceListener;


# direct methods
.method public constructor <init>(Lroboguice/inject/PreferenceListener;Ljava/lang/reflect/Field;Lcom/google/inject/Provider;Lroboguice/inject/InjectPreference;Lroboguice/inject/ContextScope;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Lcom/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Lroboguice/inject/InjectPreference;",
            "Lroboguice/inject/ContextScope;",
            ")V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->this$0:Lroboguice/inject/PreferenceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->field:Ljava/lang/reflect/Field;

    .line 82
    iput-object p4, p0, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->annotation:Lroboguice/inject/InjectPreference;

    .line 83
    iput-object p3, p0, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->contextProvider:Lcom/google/inject/Provider;

    .line 84
    iput-object p5, p0, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->scope:Lroboguice/inject/ContextScope;

    return-void
.end method


# virtual methods
.method public injectMembers(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    .line 90
    iget-object p1, p0, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->this$0:Lroboguice/inject/PreferenceListener;

    invoke-virtual {p1, p0}, Lroboguice/inject/PreferenceListener;->registerPreferenceForInjection(Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;)V

    return-void
.end method

.method public reallyInjectMembers()V
    .registers 9

    .line 94
    iget-object v0, p0, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 102
    :try_start_d
    iget-object v5, p0, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->contextProvider:Lcom/google/inject/Provider;

    invoke-interface {v5}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceActivity;

    iget-object v6, p0, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->annotation:Lroboguice/inject/InjectPreference;

    invoke-interface {v6}, Lroboguice/inject/InjectPreference;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5
    :try_end_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_1f} :catch_80
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_1f} :catch_52

    if-nez v5, :cond_47

    .line 104
    :try_start_21
    iget-object v1, p0, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-static {v1}, Lroboguice/inject/Nullable;->notNullable(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t inject null value into %s.%s when field is not @Nullable"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_47
    iget-object v1, p0, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 109
    iget-object v1, p0, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_51} :catch_80
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_51} :catch_53

    return-void

    :catch_52
    move-object v5, v1

    .line 115
    :catch_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t assign %s value %s to %s field %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    if-eqz v5, :cond_61

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_63

    :cond_61
    const-string v7, "(null)"

    :goto_63
    aput-object v7, v6, v2

    aput-object v5, v6, v4

    iget-object v2, p0, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v6, v3

    const/4 v2, 0x3

    iget-object v3, p0, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_80
    move-exception v0

    .line 112
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
