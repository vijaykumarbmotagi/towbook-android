.class public Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;
.super Ljava/lang/Object;
.source "KeyFrameInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private fractions:[F

.field private interpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method public varargs constructor <init>(Landroid/animation/TimeInterpolator;[F)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->interpolator:Landroid/animation/TimeInterpolator;

    .line 31
    iput-object p2, p0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->fractions:[F

    return-void
.end method

.method public static varargs easeInOut([F)Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;
    .registers 4

    .line 16
    new-instance v0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;

    invoke-static {}, Lcom/github/ybq/android/spinkit/animation/interpolator/Ease;->inOut()Landroid/view/animation/Interpolator;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [F

    invoke-direct {v0, v1, v2}, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;-><init>(Landroid/animation/TimeInterpolator;[F)V

    .line 17
    invoke-virtual {v0, p0}, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->setFractions([F)V

    return-object v0
.end method

.method public static varargs pathInterpolator(FFFF[F)Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;
    .registers 6

    .line 24
    new-instance v0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;

    invoke-static {p0, p1, p2, p3}, Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [F

    invoke-direct {v0, p0, p1}, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;-><init>(Landroid/animation/TimeInterpolator;[F)V

    .line 25
    invoke-virtual {v0, p4}, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->setFractions([F)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getInterpolation(F)F
    .registers 8

    monitor-enter p0

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->fractions:[F

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2f

    const/4 v0, 0x0

    .line 41
    :cond_8
    iget-object v2, p0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->fractions:[F

    array-length v2, v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_2f

    .line 42
    iget-object v2, p0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->fractions:[F

    aget v2, v2, v0

    .line 43
    iget-object v3, p0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->fractions:[F

    add-int/lit8 v0, v0, 0x1

    aget v3, v3, v0

    sub-float v4, v3, v2

    cmpl-float v5, p1, v2

    if-ltz v5, :cond_8

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_8

    sub-float/2addr p1, v2

    div-float/2addr p1, v4

    .line 47
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_37

    mul-float p1, p1, v4

    add-float/2addr v2, p1

    monitor-exit p0

    return v2

    .line 52
    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_37

    monitor-exit p0

    return p1

    :catchall_37
    move-exception p1

    .line 39
    monitor-exit p0

    throw p1
.end method

.method public varargs setFractions([F)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->fractions:[F

    return-void
.end method
