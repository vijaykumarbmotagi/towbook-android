.class Lcom/annimon/stream/internal/SpinedBuffer$OfInt$1;
.super Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.source "SpinedBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/internal/SpinedBuffer$OfInt;->iterator()Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field index:J

.field final synthetic this$0:Lcom/annimon/stream/internal/SpinedBuffer$OfInt;


# direct methods
.method constructor <init>(Lcom/annimon/stream/internal/SpinedBuffer$OfInt;)V
    .registers 4

    .line 272
    iput-object p1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfInt$1;->this$0:Lcom/annimon/stream/internal/SpinedBuffer$OfInt;

    invoke-direct {p0}, Lcom/annimon/stream/iterator/PrimitiveIterator$OfInt;-><init>()V

    const-wide/16 v0, 0x0

    .line 274
    iput-wide v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfInt$1;->index:J

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 6

    .line 283
    iget-wide v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfInt$1;->index:J

    iget-object v2, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfInt$1;->this$0:Lcom/annimon/stream/internal/SpinedBuffer$OfInt;

    invoke-virtual {v2}, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;->count()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public nextInt()I
    .registers 8

    .line 278
    iget-object v0, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfInt$1;->this$0:Lcom/annimon/stream/internal/SpinedBuffer$OfInt;

    iget-wide v1, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfInt$1;->index:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    iput-wide v5, p0, Lcom/annimon/stream/internal/SpinedBuffer$OfInt$1;->index:J

    invoke-virtual {v0, v1, v2}, Lcom/annimon/stream/internal/SpinedBuffer$OfInt;->get(J)I

    move-result v0

    return v0
.end method
