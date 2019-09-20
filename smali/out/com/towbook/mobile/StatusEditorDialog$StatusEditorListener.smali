.class public interface abstract Lcom/towbook/mobile/StatusEditorDialog$StatusEditorListener;
.super Ljava/lang/Object;
.source "StatusEditorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/towbook/mobile/StatusEditorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatusEditorListener"
.end annotation


# virtual methods
.method public abstract onUpdateDriverTruck(Lcom/towbook/api/Call;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/towbook/api/Call;",
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/AssetDriverTruck;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdateStatus(Lcom/towbook/api/Call;Lcom/towbook/api/Status;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/towbook/api/Call;",
            "Lcom/towbook/api/Status;",
            "Ljava/util/ArrayList<",
            "Lcom/towbook/api/AssetDriverTruck;",
            ">;)V"
        }
    .end annotation
.end method
