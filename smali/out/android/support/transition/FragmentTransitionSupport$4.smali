.class Landroid/support/transition/FragmentTransitionSupport$4;
.super Landroid/support/transition/Transition$EpicenterCallback;
.source "FragmentTransitionSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/FragmentTransitionSupport;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/transition/FragmentTransitionSupport;

.field final synthetic val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V
    .registers 3

    .line 308
    iput-object p1, p0, Landroid/support/transition/FragmentTransitionSupport$4;->this$0:Landroid/support/transition/FragmentTransitionSupport;

    iput-object p2, p0, Landroid/support/transition/FragmentTransitionSupport$4;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/support/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/support/transition/Transition;)Landroid/graphics/Rect;
    .registers 2
    .param p1    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 311
    iget-object p1, p0, Landroid/support/transition/FragmentTransitionSupport$4;->val$epicenter:Landroid/graphics/Rect;

    if-eqz p1, :cond_10

    iget-object p1, p0, Landroid/support/transition/FragmentTransitionSupport$4;->val$epicenter:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_10

    .line 314
    :cond_d
    iget-object p1, p0, Landroid/support/transition/FragmentTransitionSupport$4;->val$epicenter:Landroid/graphics/Rect;

    return-object p1

    :cond_10
    :goto_10
    const/4 p1, 0x0

    return-object p1
.end method