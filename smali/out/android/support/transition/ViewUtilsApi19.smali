.class Landroid/support/transition/ViewUtilsApi19;
.super Landroid/support/transition/ViewUtilsApi18;
.source "ViewUtilsApi19.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtilsApi19"

.field private static sGetTransitionAlphaMethod:Ljava/lang/reflect/Method;

.field private static sGetTransitionAlphaMethodFetched:Z

.field private static sSetTransitionAlphaMethod:Ljava/lang/reflect/Method;

.field private static sSetTransitionAlphaMethodFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi18;-><init>()V

    return-void
.end method

.method private fetchGetTransitionAlphaMethod()V
    .registers 5

    .line 92
    sget-boolean v0, Landroid/support/transition/ViewUtilsApi19;->sGetTransitionAlphaMethodFetched:Z

    if-nez v0, :cond_22

    const/4 v0, 0x1

    .line 94
    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "getTransitionAlpha"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewUtilsApi19;->sGetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    .line 95
    sget-object v1, Landroid/support/transition/ViewUtilsApi19;->sGetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception v1

    const-string v2, "ViewUtilsApi19"

    const-string v3, "Failed to retrieve getTransitionAlpha method"

    .line 97
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :goto_20
    sput-boolean v0, Landroid/support/transition/ViewUtilsApi19;->sGetTransitionAlphaMethodFetched:Z

    :cond_22
    return-void
.end method

.method private fetchSetTransitionAlphaMethod()V
    .registers 7

    .line 79
    sget-boolean v0, Landroid/support/transition/ViewUtilsApi19;->sSetTransitionAlphaMethodFetched:Z

    if-nez v0, :cond_26

    const/4 v0, 0x1

    .line 81
    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "setTransitionAlpha"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/transition/ViewUtilsApi19;->sSetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    .line 83
    sget-object v1, Landroid/support/transition/ViewUtilsApi19;->sSetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception v1

    const-string v2, "ViewUtilsApi19"

    const-string v3, "Failed to retrieve setTransitionAlpha method"

    .line 85
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :goto_24
    sput-boolean v0, Landroid/support/transition/ViewUtilsApi19;->sSetTransitionAlphaMethodFetched:Z

    :cond_26
    return-void
.end method


# virtual methods
.method public clearNonTransitionAlpha(Landroid/view/View;)V
    .registers 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public getTransitionAlpha(Landroid/view/View;)F
    .registers 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi19;->fetchGetTransitionAlphaMethod()V

    .line 56
    sget-object v0, Landroid/support/transition/ViewUtilsApi19;->sGetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_22

    .line 58
    :try_start_7
    sget-object v0, Landroid/support/transition/ViewUtilsApi19;->sGetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_16} :catch_22
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_16} :catch_17

    return v0

    :catch_17
    move-exception p1

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 65
    :catch_22
    :cond_22
    invoke-super {p0, p1}, Landroid/support/transition/ViewUtilsApi18;->getTransitionAlpha(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public saveNonTransitionAlpha(Landroid/view/View;)V
    .registers 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .registers 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi19;->fetchSetTransitionAlphaMethod()V

    .line 40
    sget-object v0, Landroid/support/transition/ViewUtilsApi19;->sSetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_22

    .line 42
    :try_start_7
    sget-object v0, Landroid/support/transition/ViewUtilsApi19;->sSetTransitionAlphaMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_16} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_25

    :catch_17
    move-exception p1

    .line 46
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 49
    :cond_22
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :catch_25
    :goto_25
    return-void
.end method