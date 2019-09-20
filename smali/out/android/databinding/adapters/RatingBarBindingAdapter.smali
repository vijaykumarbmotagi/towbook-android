.class public Landroid/databinding/adapters/RatingBarBindingAdapter;
.super Ljava/lang/Object;
.source "RatingBarBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/InverseBindingMethods;
    value = {
        .subannotation Landroid/databinding/InverseBindingMethod;
            attribute = "android:rating"
            type = Landroid/widget/RatingBar;
        .end subannotation
    }
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setListeners(Landroid/widget/RatingBar;Landroid/widget/RatingBar$OnRatingBarChangeListener;Landroid/databinding/InverseBindingListener;)V
    .registers 4
    .annotation build Landroid/databinding/BindingAdapter;
        requireAll = false
        value = {
            "android:onRatingChanged",
            "android:ratingAttrChanged"
        }
    .end annotation

    if-nez p2, :cond_6

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    goto :goto_e

    .line 48
    :cond_6
    new-instance v0, Landroid/databinding/adapters/RatingBarBindingAdapter$1;

    invoke-direct {v0, p1, p2}, Landroid/databinding/adapters/RatingBarBindingAdapter$1;-><init>(Landroid/widget/RatingBar$OnRatingBarChangeListener;Landroid/databinding/InverseBindingListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    :goto_e
    return-void
.end method

.method public static setRating(Landroid/widget/RatingBar;F)V
    .registers 3
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:rating"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/RatingBar;->setRating(F)V

    :cond_b
    return-void
.end method
