.class final Landroid/databinding/adapters/RatingBarBindingAdapter$1;
.super Ljava/lang/Object;
.source "RatingBarBindingAdapter.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/databinding/adapters/RatingBarBindingAdapter;->setListeners(Landroid/widget/RatingBar;Landroid/widget/RatingBar$OnRatingBarChangeListener;Landroid/databinding/InverseBindingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

.field final synthetic val$ratingChange:Landroid/databinding/InverseBindingListener;


# direct methods
.method constructor <init>(Landroid/widget/RatingBar$OnRatingBarChangeListener;Landroid/databinding/InverseBindingListener;)V
    .registers 3

    .line 48
    iput-object p1, p0, Landroid/databinding/adapters/RatingBarBindingAdapter$1;->val$listener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    iput-object p2, p0, Landroid/databinding/adapters/RatingBarBindingAdapter$1;->val$ratingChange:Landroid/databinding/InverseBindingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .registers 5

    .line 51
    iget-object v0, p0, Landroid/databinding/adapters/RatingBarBindingAdapter$1;->val$listener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    if-eqz v0, :cond_9

    .line 52
    iget-object v0, p0, Landroid/databinding/adapters/RatingBarBindingAdapter$1;->val$listener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/RatingBar$OnRatingBarChangeListener;->onRatingChanged(Landroid/widget/RatingBar;FZ)V

    .line 54
    :cond_9
    iget-object p1, p0, Landroid/databinding/adapters/RatingBarBindingAdapter$1;->val$ratingChange:Landroid/databinding/InverseBindingListener;

    invoke-interface {p1}, Landroid/databinding/InverseBindingListener;->onChange()V

    return-void
.end method
