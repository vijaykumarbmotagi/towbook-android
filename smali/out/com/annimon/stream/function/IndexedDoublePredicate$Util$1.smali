.class final Lcom/annimon/stream/function/IndexedDoublePredicate$Util$1;
.super Ljava/lang/Object;
.source "IndexedDoublePredicate.java"

# interfaces
.implements Lcom/annimon/stream/function/IndexedDoublePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/IndexedDoublePredicate$Util;->wrap(Lcom/annimon/stream/function/DoublePredicate;)Lcom/annimon/stream/function/IndexedDoublePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$predicate:Lcom/annimon/stream/function/DoublePredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/DoublePredicate;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/annimon/stream/function/IndexedDoublePredicate$Util$1;->val$predicate:Lcom/annimon/stream/function/DoublePredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(ID)Z
    .registers 4

    .line 37
    iget-object p1, p0, Lcom/annimon/stream/function/IndexedDoublePredicate$Util$1;->val$predicate:Lcom/annimon/stream/function/DoublePredicate;

    invoke-interface {p1, p2, p3}, Lcom/annimon/stream/function/DoublePredicate;->test(D)Z

    move-result p1

    return p1
.end method
