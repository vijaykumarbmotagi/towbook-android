.class final Lcom/annimon/stream/function/LongPredicate$Util$5;
.super Ljava/lang/Object;
.source "LongPredicate.java"

# interfaces
.implements Lcom/annimon/stream/function/LongPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/LongPredicate$Util;->safe(Lcom/annimon/stream/function/ThrowableLongPredicate;Z)Lcom/annimon/stream/function/LongPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resultIfFailed:Z

.field final synthetic val$throwablePredicate:Lcom/annimon/stream/function/ThrowableLongPredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ThrowableLongPredicate;Z)V
    .registers 3

    .line 114
    iput-object p1, p0, Lcom/annimon/stream/function/LongPredicate$Util$5;->val$throwablePredicate:Lcom/annimon/stream/function/ThrowableLongPredicate;

    iput-boolean p2, p0, Lcom/annimon/stream/function/LongPredicate$Util$5;->val$resultIfFailed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(J)Z
    .registers 4

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/function/LongPredicate$Util$5;->val$throwablePredicate:Lcom/annimon/stream/function/ThrowableLongPredicate;

    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/ThrowableLongPredicate;->test(J)Z

    move-result p1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 121
    :catch_7
    iget-boolean p1, p0, Lcom/annimon/stream/function/LongPredicate$Util$5;->val$resultIfFailed:Z

    return p1
.end method
