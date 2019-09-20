.class Lcom/annimon/stream/IntStream$2;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Lcom/annimon/stream/function/IntBinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/IntStream;->min()Lcom/annimon/stream/OptionalInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/annimon/stream/IntStream;


# direct methods
.method constructor <init>(Lcom/annimon/stream/IntStream;)V
    .registers 2

    .line 989
    iput-object p1, p0, Lcom/annimon/stream/IntStream$2;->this$0:Lcom/annimon/stream/IntStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAsInt(II)I
    .registers 3

    if-ge p1, p2, :cond_3

    goto :goto_4

    :cond_3
    move p1, p2

    :goto_4
    return p1
.end method
