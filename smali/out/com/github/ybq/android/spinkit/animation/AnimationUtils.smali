.class public Lcom/github/ybq/android/spinkit/animation/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRunning(Landroid/animation/ValueAnimator;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 47
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static varargs isRunning([Lcom/github/ybq/android/spinkit/sprite/Sprite;)Z
    .registers 5

    .line 38
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 39
    invoke-virtual {v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public static isStarted(Landroid/animation/ValueAnimator;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 51
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static start(Landroid/animation/Animator;)V
    .registers 2

    if-eqz p0, :cond_b

    .line 14
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_b

    .line 15
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_b
    return-void
.end method

.method public static varargs start([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V
    .registers 4

    .line 26
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p0, v1

    .line 27
    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public static stop(Landroid/animation/Animator;)V
    .registers 2

    if-eqz p0, :cond_b

    .line 20
    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b

    .line 21
    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_b
    return-void
.end method

.method public static varargs stop([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V
    .registers 4

    .line 32
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p0, v1

    .line 33
    invoke-virtual {v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->stop()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method
