.class final Lcom/annimon/stream/Collectors$CollectorsImpl;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Lcom/annimon/stream/Collector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CollectorsImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/annimon/stream/Collector<",
        "TT;TA;TR;>;"
    }
.end annotation


# instance fields
.field private final accumulator:Lcom/annimon/stream/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/BiConsumer<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field private final finisher:Lcom/annimon/stream/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/Function<",
            "TA;TR;>;"
        }
    .end annotation
.end field

.field private final supplier:Lcom/annimon/stream/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/annimon/stream/function/Supplier<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Supplier<",
            "TA;>;",
            "Lcom/annimon/stream/function/BiConsumer<",
            "TA;TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1079
    invoke-direct {p0, p1, p2, v0}, Lcom/annimon/stream/Collectors$CollectorsImpl;-><init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V

    return-void
.end method

.method public constructor <init>(Lcom/annimon/stream/function/Supplier;Lcom/annimon/stream/function/BiConsumer;Lcom/annimon/stream/function/Function;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/annimon/stream/function/Supplier<",
            "TA;>;",
            "Lcom/annimon/stream/function/BiConsumer<",
            "TA;TT;>;",
            "Lcom/annimon/stream/function/Function<",
            "TA;TR;>;)V"
        }
    .end annotation

    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    iput-object p1, p0, Lcom/annimon/stream/Collectors$CollectorsImpl;->supplier:Lcom/annimon/stream/function/Supplier;

    .line 1084
    iput-object p2, p0, Lcom/annimon/stream/Collectors$CollectorsImpl;->accumulator:Lcom/annimon/stream/function/BiConsumer;

    .line 1085
    iput-object p3, p0, Lcom/annimon/stream/Collectors$CollectorsImpl;->finisher:Lcom/annimon/stream/function/Function;

    return-void
.end method


# virtual methods
.method public accumulator()Lcom/annimon/stream/function/BiConsumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/function/BiConsumer<",
            "TA;TT;>;"
        }
    .end annotation

    .line 1095
    iget-object v0, p0, Lcom/annimon/stream/Collectors$CollectorsImpl;->accumulator:Lcom/annimon/stream/function/BiConsumer;

    return-object v0
.end method

.method public finisher()Lcom/annimon/stream/function/Function;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/function/Function<",
            "TA;TR;>;"
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Lcom/annimon/stream/Collectors$CollectorsImpl;->finisher:Lcom/annimon/stream/function/Function;

    return-object v0
.end method

.method public supplier()Lcom/annimon/stream/function/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/annimon/stream/function/Supplier<",
            "TA;>;"
        }
    .end annotation

    .line 1090
    iget-object v0, p0, Lcom/annimon/stream/Collectors$CollectorsImpl;->supplier:Lcom/annimon/stream/function/Supplier;

    return-object v0
.end method
