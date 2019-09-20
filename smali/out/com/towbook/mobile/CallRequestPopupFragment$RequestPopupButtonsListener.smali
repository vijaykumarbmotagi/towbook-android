.class public interface abstract Lcom/towbook/mobile/CallRequestPopupFragment$RequestPopupButtonsListener;
.super Ljava/lang/Object;
.source "CallRequestPopupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/towbook/mobile/CallRequestPopupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestPopupButtonsListener"
.end annotation


# virtual methods
.method public abstract getCache()Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LruCache<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onButtonClicked(I)V
.end method
