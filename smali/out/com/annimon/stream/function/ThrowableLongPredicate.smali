.class public interface abstract Lcom/annimon/stream/function/ThrowableLongPredicate;
.super Ljava/lang/Object;
.source "ThrowableLongPredicate.java"


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
.method public abstract test(J)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)Z^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
