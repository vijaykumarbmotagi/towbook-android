.class final Lokio/Pipe$PipeSource;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSource"
.end annotation


# instance fields
.field final synthetic this$0:Lokio/Pipe;

.field final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance p1, Lokio/Timeout;

    invoke-direct {p1}, Lokio/Timeout;-><init>()V

    iput-object p1, p0, Lokio/Pipe$PipeSource;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v0

    .line 124
    :try_start_5
    iget-object v1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokio/Pipe;->sourceClosed:Z

    .line 125
    iget-object v1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 126
    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public read(Lokio/Buffer;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v0

    .line 109
    :try_start_5
    iget-object v1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-boolean v1, v1, Lokio/Pipe;->sourceClosed:Z

    if-eqz v1, :cond_13

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_13
    :goto_13
    iget-object v1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_35

    .line 112
    iget-object v1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-boolean v1, v1, Lokio/Pipe;->sinkClosed:Z

    if-eqz v1, :cond_2b

    const-wide/16 p1, -0x1

    monitor-exit v0

    return-wide p1

    .line 113
    :cond_2b
    iget-object v1, p0, Lokio/Pipe$PipeSource;->timeout:Lokio/Timeout;

    iget-object v2, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v2}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_13

    .line 116
    :cond_35
    iget-object v1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v1, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p1

    .line 117
    iget-object p3, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object p3, p3, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 118
    monitor-exit v0

    return-wide p1

    :catchall_46
    move-exception p1

    .line 119
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_46

    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 130
    iget-object v0, p0, Lokio/Pipe$PipeSource;->timeout:Lokio/Timeout;

    return-object v0
.end method
