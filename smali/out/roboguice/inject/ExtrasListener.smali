.class public Lroboguice/inject/ExtrasListener;
.super Ljava/lang/Object;
.source "ExtrasListener.java"

# interfaces
.implements Lcom/google/inject/spi/TypeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;
    }
.end annotation


# instance fields
.field protected contextProvider:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/Provider;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lroboguice/inject/ExtrasListener;->contextProvider:Lcom/google/inject/Provider;

    return-void
.end method


# virtual methods
.method public hear(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeEncounter;)V
    .registers 10
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

    .line 48
    invoke-virtual {p1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object p1

    :goto_4
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_46

    .line 49
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_41

    aget-object v3, v0, v2

    .line 50
    const-class v4, Lroboguice/inject/InjectExtra;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 51
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 52
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Extras may not be statically injected"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_2c
    new-instance v4, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;

    iget-object v5, p0, Lroboguice/inject/ExtrasListener;->contextProvider:Lcom/google/inject/Provider;

    const-class v6, Lroboguice/inject/InjectExtra;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lroboguice/inject/InjectExtra;

    invoke-direct {v4, v3, v5, v6}, Lroboguice/inject/ExtrasListener$ExtrasMembersInjector;-><init>(Ljava/lang/reflect/Field;Lcom/google/inject/Provider;Lroboguice/inject/InjectExtra;)V

    invoke-interface {p2, v4}, Lcom/google/inject/spi/TypeEncounter;->register(Lcom/google/inject/MembersInjector;)V

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 48
    :cond_41
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_4

    :cond_46
    return-void
.end method
