.class final Lcom/annimon/stream/function/DoublePredicate$Util$2;
.super Ljava/lang/Object;
.source "DoublePredicate.java"

# interfaces
.implements Lcom/annimon/stream/function/DoublePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/DoublePredicate$Util;->or(Lcom/annimon/stream/function/DoublePredicate;Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/function/DoublePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$p1:Lcom/annimon/stream/function/DoublePredicate;

.field final synthetic val$p2:Lcom/annimon/stream/function/DoublePredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/DoublePredicate;Lcom/annimon/stream/function/DoublePredicate;)V
    .registers 3

    .line 49
    iput-object p1, p0, Lcom/annimon/stream/function/DoublePredicate$Util$2;->val$p1:Lcom/annimon/stream/function/DoublePredicate;

    iput-object p2, p0, Lcom/annimon/stream/function/DoublePredicate$Util$2;->val$p2:Lcom/annimon/stream/function/DoublePredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(D)Z
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/annimon/stream/function/DoublePredicate$Util$2;->val$p1:Lcom/annimon/stream/function/DoublePredicate;

    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/DoublePredicate;->test(D)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/annimon/stream/function/DoublePredicate$Util$2;->val$p2:Lcom/annimon/stream/function/DoublePredicate;

    invoke-interface {v0, p1, p2}, Lcom/annimon/stream/function/DoublePredicate;->test(D)Z

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
