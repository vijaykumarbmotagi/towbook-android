.class public final Lcom/google/android/libraries/places/internal/fa;
.super Landroid/support/v7/widget/DefaultItemAnimator;
.source "PG"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/fa;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/fa;->c:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/fa;->a:Ljava/util/ArrayList;

    .line 5
    sget v0, Lcom/google/android/libraries/places/R$dimen;->places_autocomplete_vertical_dropdown:I

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/places/internal/fa;->d:I

    return-void
.end method

.method static a(Landroid/view/View;)V
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method final a()V
    .registers 2

    .line 92
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fa;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 93
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fa;->dispatchAnimationsFinished()V

    :cond_9
    return-void
.end method

.method public final animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    .line 8
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/fa;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 9
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 10
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/fd;

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/fd;

    .line 12
    iget-boolean v0, v0, Lcom/google/android/libraries/places/internal/fd;->b:Z

    if-eqz v0, :cond_1b

    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    .line 16
    :cond_1b
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fa;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_20} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_20} :catch_21

    return v1

    :catch_21
    move-exception p1

    .line 19
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 20
    throw p1
.end method

.method public final endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 21
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/DefaultItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 22
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 23
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fa;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 24
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/fa;->a(Landroid/view/View;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/fa;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 26
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fa;->a()V
    :try_end_16
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_16} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p1

    .line 29
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 30
    throw p1
.end method

.method public final endAnimations()V
    .registers 4

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 39
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fa;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 40
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 41
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/fa;->a(Landroid/view/View;)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/fa;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 43
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fa;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 45
    :cond_22
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fa;->a:Ljava/util/ArrayList;

    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2a
    if-ltz v1, :cond_3e

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    .line 49
    :cond_3e
    invoke-super {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->endAnimations()V
    :try_end_41
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_41} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_41} :catch_42

    return-void

    :catch_42
    move-exception v0

    .line 52
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 53
    throw v0
.end method

.method public final isRunning()Z
    .registers 2

    .line 31
    :try_start_0
    invoke-super {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fa;->b:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fa;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_14
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_14} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_14} :catch_1b

    if-nez v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    return v0

    :cond_19
    :goto_19
    const/4 v0, 0x1

    return v0

    :catch_1b
    move-exception v0

    .line 35
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 36
    throw v0
.end method

.method public final runPendingAnimations()V
    .registers 12

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fa;->c:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 55
    invoke-super {p0, v4}, Landroid/support/v7/widget/DefaultItemAnimator;->animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    goto :goto_a

    .line 57
    :cond_18
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fa;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    invoke-super {p0}, Landroid/support/v7/widget/DefaultItemAnimator;->runPendingAnimations()V

    .line 59
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_99

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fa;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/fa;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 62
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3a
    if-ge v2, v1, :cond_99

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 64
    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 65
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/fa;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/fa;->getMoveDuration()J

    move-result-wide v5

    .line 67
    instance-of v7, v3, Lcom/google/android/libraries/places/internal/fd;

    if-eqz v7, :cond_5e

    .line 68
    move-object v7, v3

    check-cast v7, Lcom/google/android/libraries/places/internal/fd;

    .line 69
    iget v7, v7, Lcom/google/android/libraries/places/internal/fd;->a:I

    mul-int/lit8 v7, v7, 0x43

    int-to-long v7, v7

    add-long v9, v5, v7

    move-wide v5, v9

    .line 72
    :cond_5e
    iget v7, p0, Lcom/google/android/libraries/places/internal/fa;->d:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setTranslationY(F)V

    const/4 v7, 0x0

    .line 73
    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 74
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 75
    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 77
    invoke-virtual {v8, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/high16 v9, 0x3f800000    # 1.0f

    .line 78
    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v9, 0x85

    .line 79
    invoke-virtual {v7, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v9, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v9}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 80
    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 81
    invoke-virtual {v7, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 84
    new-instance v5, Lcom/google/android/libraries/places/internal/fb;

    invoke-direct {v5, p0, v4, v3, v8}, Lcom/google/android/libraries/places/internal/fb;-><init>(Lcom/google/android/libraries/places/internal/fa;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;)V

    .line 85
    invoke-virtual {v8, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_98
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_98} :catch_9a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_98} :catch_9a

    goto :goto_3a

    :cond_99
    return-void

    :catch_9a
    move-exception v0

    .line 90
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 91
    throw v0
.end method
