.class final Lcom/annimon/stream/function/Consumer$Util$1;
.super Ljava/lang/Object;
.source "Consumer.java"

# interfaces
.implements Lcom/annimon/stream/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/Consumer$Util;->andThen(Lcom/annimon/stream/function/Consumer;Lcom/annimon/stream/function/Consumer;)Lcom/annimon/stream/function/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$c1:Lcom/annimon/stream/function/Consumer;

.field final synthetic val$c2:Lcom/annimon/stream/function/Consumer;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/Consumer;Lcom/annimon/stream/function/Consumer;)V
    .registers 3

    .line 36
    iput-object p1, p0, Lcom/annimon/stream/function/Consumer$Util$1;->val$c1:Lcom/annimon/stream/function/Consumer;

    iput-object p2, p0, Lcom/annimon/stream/function/Consumer$Util$1;->val$c2:Lcom/annimon/stream/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/annimon/stream/function/Consumer$Util$1;->val$c1:Lcom/annimon/stream/function/Consumer;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/annimon/stream/function/Consumer$Util$1;->val$c2:Lcom/annimon/stream/function/Consumer;

    invoke-interface {v0, p1}, Lcom/annimon/stream/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
