.class public Lcom/towbook/mobile/classes/ConfigMetadata;
.super Ljava/lang/Object;
.source "ConfigMetadata.java"


# instance fields
.field private etag:Ljava/lang/String;

.field private timestamp:J

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/towbook/mobile/classes/ConfigMetadata;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 25
    iget-wide v0, p0, Lcom/towbook/mobile/classes/ConfigMetadata;->timestamp:J

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/towbook/mobile/classes/ConfigMetadata;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/towbook/mobile/classes/ConfigMetadata;->etag:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .registers 3

    .line 29
    iput-wide p1, p0, Lcom/towbook/mobile/classes/ConfigMetadata;->timestamp:J

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/towbook/mobile/classes/ConfigMetadata;->version:Ljava/lang/String;

    return-void
.end method
