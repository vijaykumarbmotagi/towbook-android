.class final Lcom/annimon/stream/function/Predicate$Util$2;
.super Ljava/lang/Object;
.source "Predicate.java"

# interfaces
.implements Lcom/annimon/stream/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/Predicate$Util;->and(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;[Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/function/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/Predicate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$p1:Lcom/annimon/stream/function/Predicate;

.field final synthetic val$p2:Lcom/annimon/stream/function/Predicate;

.field final synthetic val$rest:[Lcom/annimon/stream/function/Predicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/Predicate;Lcom/annimon/stream/function/Predicate;[Lcom/annimon/stream/function/Predicate;)V
    .registers 4

    .line 62
    iput-object p1, p0, Lcom/annimon/stream/function/Predicate$Util$2;->val$p1:Lcom/annimon/stream/function/Predicate;

    iput-object p2, p0, Lcom/annimon/stream/function/Predicate$Util$2;->val$p2:Lcom/annimon/stream/function/Predicate;

    iput-object p3, p0, Lcom/annimon/stream/function/Predicate$Util$2;->val$rest:[Lcom/annimon/stream/function/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/annimon/stream/function/Predicate$Util$2;->val$p1:Lcom/annimon/stream/function/Predicate;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/annimon/stream/function/Predicate$Util$2;->val$p2:Lcom/annimon/stream/function/Predicate;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-nez v0, :cond_18

    return v2

    .line 67
    :cond_18
    iget-object v0, p0, Lcom/annimon/stream/function/Predicate$Util$2;->val$rest:[Lcom/annimon/stream/function/Predicate;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_2a

    aget-object v5, v0, v4

    .line 68
    invoke-interface {v5, p1}, Lcom/annimon/stream/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    return v2

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_2a
    return v1
.end method
