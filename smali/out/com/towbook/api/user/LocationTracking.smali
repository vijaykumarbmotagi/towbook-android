.class public Lcom/towbook/api/user/LocationTracking;
.super Ljava/lang/Object;
.source "LocationTracking.java"


# instance fields
.field private reportLocation:Ljava/lang/Boolean;

.field private reportingInterval:J

.field private shouldRespondToOnDemandRequestsForLocation:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/towbook/api/user/LocationTracking;->setReportingInterval(J)V

    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/towbook/api/user/LocationTracking;->setShouldRespondToOnDemandRequestsForLocation(Ljava/lang/Boolean;)V

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/towbook/api/user/LocationTracking;->setReportLocation(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public getReportLocation()Ljava/lang/Boolean;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/towbook/api/user/LocationTracking;->reportLocation:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getReportingInterval()J
    .registers 3

    .line 25
    iget-wide v0, p0, Lcom/towbook/api/user/LocationTracking;->reportingInterval:J

    return-wide v0
.end method

.method public getShouldRespondToOnDemandRequestsForLocation()Ljava/lang/Boolean;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/towbook/api/user/LocationTracking;->shouldRespondToOnDemandRequestsForLocation:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setReportLocation(Ljava/lang/Boolean;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/towbook/api/user/LocationTracking;->reportLocation:Ljava/lang/Boolean;

    return-void
.end method

.method public setReportingInterval(J)V
    .registers 3

    .line 29
    iput-wide p1, p0, Lcom/towbook/api/user/LocationTracking;->reportingInterval:J

    return-void
.end method

.method public setShouldRespondToOnDemandRequestsForLocation(Ljava/lang/Boolean;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/towbook/api/user/LocationTracking;->shouldRespondToOnDemandRequestsForLocation:Ljava/lang/Boolean;

    return-void
.end method
