.class public interface abstract Lcom/annimon/stream/function/ThrowableLongSupplier;
.super Ljava/lang/Object;
.source "ThrowableLongSupplier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getAsLong()J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()J^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
