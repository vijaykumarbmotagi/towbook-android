.class final Landroid/databinding/adapters/ViewGroupBindingAdapter$1;
.super Ljava/lang/Object;
.source "ViewGroupBindingAdapter.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/databinding/adapters/ViewGroupBindingAdapter;->setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$added:Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;

.field final synthetic val$removed:Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;


# direct methods
.method constructor <init>(Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;)V
    .registers 3

    .line 59
    iput-object p1, p0, Landroid/databinding/adapters/ViewGroupBindingAdapter$1;->val$added:Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;

    iput-object p2, p0, Landroid/databinding/adapters/ViewGroupBindingAdapter$1;->val$removed:Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 62
    iget-object v0, p0, Landroid/databinding/adapters/ViewGroupBindingAdapter$1;->val$added:Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;

    if-eqz v0, :cond_9

    .line 63
    iget-object v0, p0, Landroid/databinding/adapters/ViewGroupBindingAdapter$1;->val$added:Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;

    invoke-interface {v0, p1, p2}, Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 69
    iget-object v0, p0, Landroid/databinding/adapters/ViewGroupBindingAdapter$1;->val$removed:Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;

    if-eqz v0, :cond_9

    .line 70
    iget-object v0, p0, Landroid/databinding/adapters/ViewGroupBindingAdapter$1;->val$removed:Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;

    invoke-interface {v0, p1, p2}, Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_9
    return-void
.end method
