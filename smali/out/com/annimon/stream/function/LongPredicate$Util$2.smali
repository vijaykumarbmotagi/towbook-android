.class final Lcom/annimon/stream/function/LongPredicate$Util$2;
.super Ljava/lang/Object;
.source "LongPredicate.java"

# interfaces
.implements Lcom/annimon/stream/function/LongPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/LongPredicate$Util;->or(Lcom/annimon/stream/function/LongPredicate;Lcom/annimon/stream/function/LongPredicate;)Lcom/annimon/stream/function/LongPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$p1:Lcom/annimon/stream/function/LongPredicate;

.field final synthetic val$p2:Lcom/annimon/stream/function/LongPredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/LongPredicate;Lcom/annimon/stream/function/LongPredicate;)V
    .registers 3

    .line 49
    iput-object p1, p0, Lcom/annimon/stream/function/LongPredicate$Util$2;->val$p1:Lcom/annimon/stream/function/LongPredicate;

    iput-object p2, p0, Lcom/annimon/stream/function/LongPredicate$Util$2;->val$p2:Lcom/annimon/stream/function/LongPredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(J)Z
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/annimon/stream/function/LongPredicate$Util$2;->val$p1:Lcom/annimon/stream/function/LongPredicate;

    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/LongPredicate;->test(J)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/annimon/stream/function/LongPredicate$Util$2;->val$p2:Lcom/annimon/stream/function/LongPredicate;

    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/LongPredicate;->test(J)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method
