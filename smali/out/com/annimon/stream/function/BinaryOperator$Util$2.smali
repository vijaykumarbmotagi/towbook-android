.class final Lcom/annimon/stream/function/BinaryOperator$Util$2;
.super Ljava/lang/Object;
.source "BinaryOperator.java"

# interfaces
.implements Lcom/annimon/stream/function/BinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/BinaryOperator$Util;->maxBy(Ljava/util/Comparator;)Lcom/annimon/stream/function/BinaryOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/BinaryOperator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$comparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/annimon/stream/function/BinaryOperator$Util$2;->val$comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/annimon/stream/function/BinaryOperator$Util$2;->val$comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_9

    goto :goto_a

    :cond_9
    move-object p1, p2

    :goto_a
    return-object p1
.end method
