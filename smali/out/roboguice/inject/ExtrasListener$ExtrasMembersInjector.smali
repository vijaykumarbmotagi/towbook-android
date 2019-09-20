.class public Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;
.super Ljava/lang/Object;
.source "ExtrasListener.java"

# interfaces
.implements Lcom/google/inject/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lroboguice/inject/ExtrasListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ExtrasMembersInjector"
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
.field protected annotation:Lroboguice/inject/InjectExtra;

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


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Lcom/google/inject/Provider;Lroboguice/inject/InjectExtra;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Lcom/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Lroboguice/inject/InjectExtra;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    .line 69
    iput-object p2, p0, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;->contextProvider:Lcom/google/inject/Provider;

    .line 70
    iput-object p3, p0, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;->annotation:Lroboguice/inject/InjectExtra;

    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/google/inject/Injector;)Ljava/lang/Object;
    .registers 8

    if-eqz p2, :cond_3d

    .line 132
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3d

    .line 139
    :cond_d
    const-class v0, Lroboguice/inject/ExtraConverter;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/inject/util/Types;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    .line 140
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/reflect/Type;)Lcom/google/inject/Key;

    move-result-object p1

    .line 144
    invoke-interface {p3}, Lcom/google/inject/Injector;->getBindings()Ljava/util/Map;

    move-result-object v0

    .line 146
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 147
    invoke-interface {p3, p1}, Lcom/google/inject/Injector;->getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lroboguice/inject/ExtraConverter;

    .line 148
    invoke-interface {p1, p2}, Lroboguice/inject/ExtraConverter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_3c
    return-object p2

    :cond_3d
    :goto_3d
    return-object p2
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;->contextProvider:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 76
    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2e

    .line 77
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Extras may not be injected into contexts that are not Activities (error in class %s)"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;->contextProvider:Lcom/google/inject/Provider;

    invoke-interface {v3}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_2e
    check-cast v0, Landroid/app/Activity;

    .line 83
    iget-object v1, p0, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;->annotation:Lroboguice/inject/InjectExtra;

    invoke-interface {v1}, Lroboguice/inject/InjectExtra;->value()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v4, :cond_c2

    .line 86
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4a

    goto/16 :goto_c2

    .line 97
    :cond_4a
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 99
    iget-object v4, p0, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lroboguice/RoboGuice;->getBaseApplicationInjector(Landroid/app/Application;)Lcom/google/inject/Injector;

    move-result-object v0

    invoke-virtual {p0, v4, v1, v0}, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;->convert(Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/google/inject/Injector;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_84

    .line 109
    iget-object v1, p0, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-static {v1}, Lroboguice/inject/Nullable;->notNullable(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 110
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Can\'t inject null value into %s.%s when field is not @Nullable"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v2, p0, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_84
    iget-object v1, p0, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 117
    :try_start_89
    iget-object v1, p0, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8e
    .catch Ljava/lang/IllegalAccessException; {:try_start_89 .. :try_end_8e} :catch_bb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_89 .. :try_end_8e} :catch_8f

    return-void

    .line 123
    :catch_8f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t assign %s value %s to %s field %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz v0, :cond_9d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_9f

    :cond_9d
    const-string v7, "(null)"

    :goto_9f
    aput-object v7, v4, v2

    aput-object v0, v4, v3

    iget-object v0, p0, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v4, v6

    iget-object v0, p0, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_bb
    move-exception p1

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 89
    :cond_c2
    :goto_c2
    iget-object p1, p0, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;->annotation:Lroboguice/inject/InjectExtra;

    invoke-interface {p1}, Lroboguice/inject/InjectExtra;->optional()Z

    move-result p1

    if-eqz p1, :cond_cb

    return-void

    .line 92
    :cond_cb
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t find the mandatory extra identified by key [%s] on field %s.%s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v2

    iget-object v1, p0, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v4, v3

    iget-object v1, p0, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
