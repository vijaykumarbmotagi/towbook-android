.class public final Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;,
        Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;
    }
.end annotation


# instance fields
.field private mAlpha:I

.field private mFrom:I

.field private zzpl:Z

.field private zzpw:I

.field private zzpx:J

.field private zzpy:I

.field private zzpz:I

.field private zzqa:I

.field private zzqb:Z

.field private zzqc:Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;

.field private zzqd:Landroid/graphics/drawable/Drawable;

.field private zzqe:Landroid/graphics/drawable/Drawable;

.field private zzqf:Z

.field private zzqg:Z

.field private zzqh:Z

.field private zzqi:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;-><init>(Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;)V

    if-nez p1, :cond_a

    invoke-static {}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;->zzcp()Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;

    move-result-object p1

    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqc:Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;

    iget v1, v0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;->zzql:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, v1

    iput p1, v0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;->zzql:I

    if-nez p2, :cond_20

    invoke-static {}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;->zzcp()Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zza;

    move-result-object p2

    :cond_20
    iput-object p2, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqe:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqc:Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;

    iget v0, p1, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;->zzql:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p2

    or-int/2addr p2, v0

    iput p2, p1, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;->zzql:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpw:I

    const/16 v1, 0xff

    iput v1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpz:I

    iput v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->mAlpha:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpl:Z

    new-instance v0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;-><init>(Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqc:Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;

    return-void
.end method


# virtual methods
.method public final canConstantState()Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqf:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqe:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-boolean v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqg:Z

    iput-boolean v1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqf:Z

    :cond_1c
    iget-boolean v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqg:Z

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 11

    iget v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpw:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_84

    goto :goto_42

    :pswitch_8
    iget-wide v3, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpx:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_42

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpx:J

    sub-long v7, v3, v5

    long-to-float v0, v7

    iget v3, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqa:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v3

    if-ltz v4, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    if-eqz v1, :cond_29

    iput v2, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpw:I

    :cond_29
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpy:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    add-float/2addr v3, v2

    float-to-int v0, v3

    iput v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->mAlpha:I

    goto :goto_42

    :pswitch_38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpx:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpw:I

    const/4 v1, 0x0

    :cond_42
    :goto_42
    iget v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->mAlpha:I

    iget-boolean v2, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpl:Z

    iget-object v3, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqd:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqe:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_60

    if-eqz v2, :cond_50

    if-nez v0, :cond_53

    :cond_50
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_53
    iget v1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpz:I

    if-ne v0, v1, :cond_5f

    iget v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpz:I

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5f
    return-void

    :cond_60
    if-eqz v2, :cond_68

    iget v1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpz:I

    sub-int/2addr v1, v0

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_68
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v2, :cond_72

    iget v1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpz:I

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_72
    if-lez v0, :cond_7f

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget p1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpz:I

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7f
    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->invalidateSelf()V

    return-void

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_38
        :pswitch_8
    .end packed-switch
.end method

.method public final getChangingConfigurations()I
    .registers 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqc:Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;

    iget v1, v1, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqc:Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;

    iget v1, v1, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;->zzql:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqc:Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;->mChangingConfigurations:I

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqc:Lcom/google/android/gms/common/images/internal/CrossFadingDrawable$zzb;

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getEndDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqe:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqe:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqe:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqh:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqe:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqi:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqh:Z

    :cond_19
    iget v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqi:I

    return v0
.end method

.method public final getStartDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqd:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqb:Z

    if-nez v0, :cond_25

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->canConstantState()Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqe:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqb:Z

    :cond_25
    return-object p0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqe:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final resetTransition()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->mAlpha:I

    iput v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpw:I

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->invalidateSelf()V

    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_9
    return-void
.end method

.method public final setAlpha(I)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->mAlpha:I

    iget v1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpz:I

    if-ne v0, v1, :cond_8

    iput p1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->mAlpha:I

    :cond_8
    iput p1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpz:I

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqe:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final setCrossFadeEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpl:Z

    return-void
.end method

.method public final startTransition(I)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->mFrom:I

    iget v1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpz:I

    iput v1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpy:I

    iput v0, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->mAlpha:I

    iput p1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzqa:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->zzpw:I

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->invalidateSelf()V

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method
