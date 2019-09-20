.class public Lroboguice/inject/PreferenceListener;
.super Ljava/lang/Object;
.source "PreferenceListener.java"

# interfaces
.implements Lcom/google/inject/spi/TypeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;
    }
.end annotation


# instance fields
.field protected application:Landroid/app/Application;

.field protected contextProvider:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected preferencesForInjection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lroboguice/inject/PreferenceListener$PreferenceMembersInjector<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected scope:Lroboguice/inject/ContextScope;


# direct methods
.method public constructor <init>(Lcom/google/inject/Provider;Landroid/app/Application;Lroboguice/inject/ContextScope;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Landroid/app/Application;",
            "Lroboguice/inject/ContextScope;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lroboguice/inject/PreferenceListener;->preferencesForInjection:Ljava/util/ArrayList;

    .line 45
    iput-object p1, p0, Lroboguice/inject/PreferenceListener;->contextProvider:Lcom/google/inject/Provider;

    .line 46
    iput-object p2, p0, Lroboguice/inject/PreferenceListener;->application:Landroid/app/Application;

    .line 47
    iput-object p3, p0, Lroboguice/inject/PreferenceListener;->scope:Lroboguice/inject/ContextScope;

    return-void
.end method


# virtual methods
.method public hear(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeEncounter;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TI;>;",
            "Lcom/google/inject/spi/TypeEncounter<",
            "TI;>;)V"
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p1

    :goto_4
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_4b

    .line 52
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_46

    aget-object v5, v0, v2

    .line 53
    const-class v3, Lroboguice/inject/InjectPreference;

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 54
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 55
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Preferences may not be statically injected"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_2c
    new-instance v9, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;

    iget-object v6, p0, Lroboguice/inject/PreferenceListener;->contextProvider:Lcom/google/inject/Provider;

    const-class v3, Lroboguice/inject/InjectPreference;

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lroboguice/inject/InjectPreference;

    iget-object v8, p0, Lroboguice/inject/PreferenceListener;->scope:Lroboguice/inject/ContextScope;

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;-><init>(Lroboguice/inject/PreferenceListener;Ljava/lang/reflect/Field;Lcom/google/inject/Provider;Lroboguice/inject/InjectPreference;Lroboguice/inject/ContextScope;)V

    invoke-interface {p2, v9}, Lcom/google/inject/spi/TypeEncounter;->register(Lcom/google/inject/MembersInjector;)V

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 51
    :cond_46
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_4

    :cond_4b
    return-void
.end method

.method public injectPreferenceViews()V
    .registers 3

    .line 67
    iget-object v0, p0, Lroboguice/inject/PreferenceListener;->preferencesForInjection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 68
    iget-object v1, p0, Lroboguice/inject/PreferenceListener;->preferencesForInjection:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;

    invoke-virtual {v1}, Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;->reallyInjectMembers()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public registerPreferenceForInjection(Lroboguice/inject/PreferenceListener$PreferenceMembersInjector;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lroboguice/inject/PreferenceListener$PreferenceMembersInjector<",
            "*>;)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lroboguice/inject/PreferenceListener;->preferencesForInjection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
