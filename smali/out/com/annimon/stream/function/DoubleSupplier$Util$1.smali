.class final Lcom/annimon/stream/function/DoubleSupplier$Util$1;
.super Ljava/lang/Object;
.source "DoubleSupplier.java"

# interfaces
.implements Lcom/annimon/stream/function/DoubleSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/DoubleSupplier$Util;->safe(Lcom/annimon/stream/function/ThrowableDoubleSupplier;D)Lcom/annimon/stream/function/DoubleSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resultIfFailed:D

.field final synthetic val$throwableSupplier:Lcom/annimon/stream/function/ThrowableDoubleSupplier;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowableDoubleSupplier;D)V
    .registers 4

    .line 47
    iput-object p1, p0, Lcom/annimon/stream/function/DoubleSupplier$Util$1;->val$throwableSupplier:Lcom/annimon/stream/function/ThrowableDoubleSupplier;

    iput-wide p2, p0, Lcom/annimon/stream/function/DoubleSupplier$Util$1;->val$resultIfFailed:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsDouble()D
    .registers 3

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/DoubleSupplier$Util$1;->val$throwableSupplier:Lcom/annimon/stream/function/ThrowableDoubleSupplier;

    invoke-interface {v0}, Lcom/annimon/stream/function/ThrowableDoubleSupplier;->getAsDouble()D

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 54
    :catch_7
    iget-wide v0, p0, Lcom/annimon/stream/function/DoubleSupplier$Util$1;->val$resultIfFailed:D

    return-wide v0
.end method
