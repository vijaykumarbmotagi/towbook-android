.class final Lcom/annimon/stream/function/IntPredicate$Util$4;
.super Ljava/lang/Object;
.source "IntPredicate.java"

# interfaces
.implements Lcom/annimon/stream/function/IntPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IntPredicate$Util;->negate(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/function/IntPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$p1:Lcom/annimon/stream/function/IntPredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/IntPredicate;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/annimon/stream/function/IntPredicate$Util$4;->val$p1:Lcom/annimon/stream/function/IntPredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(I)Z
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/annimon/stream/function/IntPredicate$Util$4;->val$p1:Lcom/annimon/stream/function/IntPredicate;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/IntPredicate;->test(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
