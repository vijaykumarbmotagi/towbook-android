.class final Lcom/annimon/stream/Collectors$23;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/Collectors;->summingInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/function/Function<",
        "[I",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply([I)Ljava/lang/Integer;
    .registers 3

    const/4 v0, 0x0

    .line 560
    aget p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 557
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/annimon/stream/Collectors$23;->apply([I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
