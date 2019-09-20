.class final Lcom/google/android/libraries/places/internal/fb;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field private final synthetic a:Landroid/view/View;

.field private final synthetic b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field private final synthetic c:Landroid/view/ViewPropertyAnimator;

.field private final synthetic d:Lcom/google/android/libraries/places/internal/fa;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/fa;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/fb;->d:Lcom/google/android/libraries/places/internal/fa;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/fb;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/fb;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/fb;->c:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fb;->d:Lcom/google/android/libraries/places/internal/fa;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fb;->a:Landroid/view/View;

    .line 9
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/fa;->a(Landroid/view/View;)V
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 13
    throw p1
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 14
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fb;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 15
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fb;->d:Lcom/google/android/libraries/places/internal/fa;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fb;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/fa;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 16
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fb;->d:Lcom/google/android/libraries/places/internal/fa;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/fa;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fb;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fb;->d:Lcom/google/android/libraries/places/internal/fa;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/fa;->a()V

    .line 19
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fb;->c:Landroid/view/ViewPropertyAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;
    :try_end_22
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_22} :catch_23
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p1

    .line 22
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 23
    throw p1
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fb;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/fb;->d:Lcom/google/android/libraries/places/internal/fa;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/fb;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/fa;->dispatchAddStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    :try_end_d
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/do;->a(Ljava/lang/Throwable;)V

    .line 7
    throw p1
.end method
