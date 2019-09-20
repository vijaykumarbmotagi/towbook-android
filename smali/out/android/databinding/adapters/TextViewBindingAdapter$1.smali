.class final Landroid/databinding/adapters/TextViewBindingAdapter$1;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroid/databinding/InverseBindingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$after:Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

.field final synthetic val$before:Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

.field final synthetic val$on:Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

.field final synthetic val$textAttrChanged:Landroid/databinding/InverseBindingListener;


# direct methods
.method constructor <init>(Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/InverseBindingListener;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V
    .registers 5

    .line 359
    iput-object p1, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$before:Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    iput-object p2, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$on:Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    iput-object p3, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$textAttrChanged:Landroid/databinding/InverseBindingListener;

    iput-object p4, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$after:Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 379
    iget-object v0, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$after:Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    if-eqz v0, :cond_9

    .line 380
    iget-object v0, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$after:Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    invoke-interface {v0, p1}, Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;->afterTextChanged(Landroid/text/Editable;)V

    :cond_9
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 362
    iget-object v0, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$before:Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    if-eqz v0, :cond_9

    .line 363
    iget-object v0, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$before:Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_9
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 369
    iget-object v0, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$on:Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    if-eqz v0, :cond_9

    .line 370
    iget-object v0, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$on:Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 372
    :cond_9
    iget-object p1, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$textAttrChanged:Landroid/databinding/InverseBindingListener;

    if-eqz p1, :cond_12

    .line 373
    iget-object p1, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$textAttrChanged:Landroid/databinding/InverseBindingListener;

    invoke-interface {p1}, Landroid/databinding/InverseBindingListener;->onChange()V

    :cond_12
    return-void
.end method
