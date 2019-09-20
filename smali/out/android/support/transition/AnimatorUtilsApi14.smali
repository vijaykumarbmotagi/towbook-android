.class Landroid/support/transition/AnimatorUtilsApi14;
.super Ljava/lang/Object;
.source "AnimatorUtilsApi14.java"

# interfaces
.implements Landroid/support/transition/AnimatorUtilsImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/AnimatorUtilsApi14$AnimatorPauseListenerCompat;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 3
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/animation/AnimatorListenerAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public pause(Landroid/animation/Animator;)V
    .registers 7
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_b
    if-ge v1, v2, :cond_1f

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 41
    instance-of v4, v3, Landroid/support/transition/AnimatorUtilsApi14$AnimatorPauseListenerCompat;

    if-eqz v4, :cond_1c

    .line 42
    check-cast v3, Landroid/support/transition/AnimatorUtilsApi14$AnimatorPauseListenerCompat;

    invoke-interface {v3, p1}, Landroid/support/transition/AnimatorUtilsApi14$AnimatorPauseListenerCompat;->onAnimationPause(Landroid/animation/Animator;)V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1f
    return-void
.end method

.method public resume(Landroid/animation/Animator;)V
    .registers 7
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_b
    if-ge v1, v2, :cond_1f

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 54
    instance-of v4, v3, Landroid/support/transition/AnimatorUtilsApi14$AnimatorPauseListenerCompat;

    if-eqz v4, :cond_1c

    .line 55
    check-cast v3, Landroid/support/transition/AnimatorUtilsApi14$AnimatorPauseListenerCompat;

    invoke-interface {v3, p1}, Landroid/support/transition/AnimatorUtilsApi14$AnimatorPauseListenerCompat;->onAnimationResume(Landroid/animation/Animator;)V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1f
    return-void
.end method
