.class final Lcom/annimon/stream/function/IntSupplier$Util$1;
.super Ljava/lang/Object;
.source "IntSupplier.java"

# interfaces
.implements Lcom/annimon/stream/function/IntSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IntSupplier$Util;->safe(Lcom/annimon/stream/function/ThrowableIntSupplier;I)Lcom/annimon/stream/function/IntSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resultIfFailed:I

.field final synthetic val$throwableSupplier:Lcom/annimon/stream/function/ThrowableIntSupplier;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowableIntSupplier;I)V
    .registers 3

    .line 48
    iput-object p1, p0, Lcom/annimon/stream/function/IntSupplier$Util$1;->val$throwableSupplier:Lcom/annimon/stream/function/ThrowableIntSupplier;

    iput p2, p0, Lcom/annimon/stream/function/IntSupplier$Util$1;->val$resultIfFailed:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsInt()I
    .registers 2

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/IntSupplier$Util$1;->val$throwableSupplier:Lcom/annimon/stream/function/ThrowableIntSupplier;

    invoke-interface {v0}, Lcom/annimon/stream/function/ThrowableIntSupplier;->getAsInt()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 55
    :catch_7
    iget v0, p0, Lcom/annimon/stream/function/IntSupplier$Util$1;->val$resultIfFailed:I

    return v0
.end method
