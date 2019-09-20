.class public final Lcom/newrelic/agent/android/NewRelic;
.super Ljava/lang/Object;
.source "NewRelic.java"


# static fields
.field private static final UNKNOWN_HTTP_REQUEST_TYPE:Ljava/lang/String; = "unknown"

.field protected static final agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

.field protected static final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field protected static started:Z = false


# instance fields
.field protected logLevel:I

.field protected loggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 51
    new-instance v0, Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-direct {v0}, Lcom/newrelic/agent/android/AgentConfiguration;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/newrelic/agent/android/NewRelic;->loggingEnabled:Z

    const/4 v0, 0x3

    .line 55
    iput v0, p0, Lcom/newrelic/agent/android/NewRelic;->logLevel:I

    .line 58
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setApplicationToken(Ljava/lang/String;)V

    return-void
.end method

.method protected static _noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v13, p2

    const-string v0, "noticeHttpTransaction: url must not be empty."

    .line 569
    invoke-static {v14, v0}, Lcom/newrelic/agent/android/NewRelic;->checkEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "noticeHttpTransaction: httpMethod must not be empty."

    .line 570
    invoke-static {v15, v0}, Lcom/newrelic/agent/android/NewRelic;->checkEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :try_start_10
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_15} :catch_55

    const/4 v0, 0x0

    sub-long v2, p5, p3

    long-to-double v0, v2

    double-to-int v2, v0

    const-string v3, "noticeHttpTransaction: the startTimeMs is later than the endTimeMs, resulting in a negative total time."

    .line 580
    invoke-static {v2, v3}, Lcom/newrelic/agent/android/NewRelic;->checkNegative(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_54

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v7, v0, v2

    .line 585
    new-instance v11, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    const/4 v4, 0x0

    move-object v0, v11

    move-object v1, v14

    move-object v2, v15

    move v3, v13

    move-wide/from16 v5, p3

    move-wide/from16 v9, p7

    move-object/from16 v16, v11

    move-wide/from16 v11, p9

    move v14, v13

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;Ljava/lang/String;IIJDJJLjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-static {v0}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    int-to-long v0, v14

    const-wide/16 v2, 0x190

    cmp-long v4, v0, v2

    if-ltz v4, :cond_54

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move v1, v14

    move-object/from16 v0, p0

    .line 589
    invoke-static {v0, v15, v1, v2, v3}, Lcom/newrelic/agent/android/Measurements;->addHttpError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    :cond_54
    return-void

    :catch_55
    move-object v0, v14

    .line 575
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticeHttpTransaction: URL is malformed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static checkEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 664
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/NewRelic;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_f

    .line 667
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    return-void
.end method

.method private static checkNegative(ILjava/lang/String;)Z
    .registers 2

    if-gez p0, :cond_9

    .line 673
    sget-object p0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-interface {p0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private static checkNull(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    if-nez p0, :cond_8

    .line 659
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    return-void
.end method

.method public static crashNow()V
    .registers 1

    const-string v0, "This is a demonstration crash courtesy of New Relic"

    .line 687
    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->crashNow(Ljava/lang/String;)V

    return-void
.end method

.method public static crashNow(Ljava/lang/String;)V
    .registers 2

    .line 696
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static currentSessionId()Ljava/lang/String;
    .registers 1

    .line 918
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/AgentConfiguration;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static disableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V
    .registers 4

    .line 245
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disable feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/FeatureFlag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 246
    invoke-static {p0}, Lcom/newrelic/agent/android/FeatureFlag;->disableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    return-void
.end method

.method public static enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V
    .registers 1

    .line 234
    invoke-static {p0}, Lcom/newrelic/agent/android/FeatureFlag;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    return-void
.end method

.method public static endInteraction(Ljava/lang/String;)V
    .registers 4

    .line 422
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NewRelic.endInteraction invoked. id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 423
    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->endTrace(Ljava/lang/String;)V

    return-void
.end method

.method public static endMethodTrace()V
    .registers 2

    .line 451
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "NewRelic.endMethodTrace invoked."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void
.end method

.method public static incrementAttribute(Ljava/lang/String;)Z
    .registers 4

    .line 744
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, p0, v1, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->incrementAttribute(Ljava/lang/String;D)Z

    move-result p0

    return p0
.end method

.method public static incrementAttribute(Ljava/lang/String;D)Z
    .registers 4

    .line 755
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->incrementAttribute(Ljava/lang/String;D)Z

    move-result p0

    return p0
.end method

.method private isInstrumented()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public static isStarted()Z
    .registers 1

    .line 319
    sget-boolean v0, Lcom/newrelic/agent/android/NewRelic;->started:Z

    return v0
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;IJJJJ)V
    .registers 24
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v1, "unknown"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    .line 550
    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;IJJJJLjava/lang/String;)V
    .registers 25
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v1, "unknown"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    .line 555
    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v1, "unknown"

    const/4 v13, 0x0

    move-object v0, p0

    move v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    .line 560
    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v1, "unknown"

    move-object v0, p0

    move v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 565
    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/net/URLConnection;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URLConnection;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v1, "unknown"

    move-object v0, p0

    move v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 545
    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/net/URLConnection;)V

    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpResponse;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v1, "unknown"

    move-object v0, p0

    move v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 540
    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJ)V
    .registers 25

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    .line 492
    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;)V
    .registers 26

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    .line 496
    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    .line 500
    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 504
    invoke-static/range {p0 .. p13}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/net/URLConnection;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URLConnection;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p13

    if-eqz v0, :cond_28

    const-string v1, "X-NewRelic-ID"

    .line 509
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_28

    .line 511
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_28

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    .line 512
    invoke-static/range {v2 .. v15}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_28
    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 517
    invoke-static/range {v1 .. v14}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpResponse;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p13

    if-eqz v0, :cond_36

    const-string v1, "X-NewRelic-ID"

    .line 527
    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 529
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_36

    .line 530
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-static/range {v2 .. v15}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_36
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    .line 535
    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static noticeNetworkFailure(Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v1, "unknown"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    .line 647
    invoke-static/range {v0 .. v6}, Lcom/newrelic/agent/android/NewRelic;->noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;)V

    return-void
.end method

.method public static noticeNetworkFailure(Ljava/lang/String;JJLjava/lang/Exception;)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v1, "unknown"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    .line 652
    invoke-static/range {v0 .. v6}, Lcom/newrelic/agent/android/NewRelic;->noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Exception;)V

    return-void
.end method

.method public static noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;)V
    .registers 15

    const-string v7, ""

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 631
    invoke-static/range {v0 .. v7}, Lcom/newrelic/agent/android/NewRelic;->noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;Ljava/lang/String;)V

    return-void
.end method

.method public static noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;Ljava/lang/String;)V
    .registers 8

    .line 627
    invoke-static/range {p0 .. p7}, Lcom/newrelic/agent/android/NewRelic;->noticeNetworkFailureDelegate(Ljava/lang/String;Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;Ljava/lang/String;)V

    return-void
.end method

.method public static noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Exception;)V
    .registers 16

    const-string v0, "noticeHttpException: url must not be empty."

    .line 635
    invoke-static {p0, v0}, Lcom/newrelic/agent/android/NewRelic;->checkEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-static {p6}, Lcom/newrelic/agent/android/util/NetworkFailure;->exceptionToNetworkFailure(Ljava/lang/Exception;)Lcom/newrelic/agent/android/util/NetworkFailure;

    move-result-object v7

    .line 638
    invoke-virtual {p6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v8}, Lcom/newrelic/agent/android/NewRelic;->noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;Ljava/lang/String;)V

    return-void
.end method

.method private static noticeNetworkFailureDelegate(Ljava/lang/String;Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;Ljava/lang/String;)V
    .registers 8

    .line 611
    new-instance p2, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {p2}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 612
    invoke-static {p2, p0, p1}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-virtual {p6}, Lcom/newrelic/agent/android/util/NetworkFailure;->getErrorCode()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setErrorCode(I)V

    .line 614
    invoke-virtual {p2}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object p0

    .line 616
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    const-string p2, "content_length"

    const-string p3, "0"

    .line 617
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "content_type"

    const-string p3, "text/html"

    .line 618
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    invoke-virtual {p0, p7}, Lcom/newrelic/agent/android/api/common/TransactionData;->setResponseBody(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->setParams(Ljava/util/Map;)V

    .line 622
    new-instance p1, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-direct {p1, p0}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Lcom/newrelic/agent/android/api/common/TransactionData;)V

    invoke-static {p1}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 623
    invoke-static {p0}, Lcom/newrelic/agent/android/Measurements;->addHttpError(Lcom/newrelic/agent/android/api/common/TransactionData;)V

    return-void
.end method

.method public static recordBreadcrumb(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    .line 848
    invoke-static {p0, v0}, Lcom/newrelic/agent/android/NewRelic;->recordBreadcrumb(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static recordBreadcrumb(Ljava/lang/String;Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 860
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_7
    if-eqz p0, :cond_14

    .line 862
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "name"

    .line 863
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    :cond_14
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->recordBreadcrumb(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static recordCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    if-nez p2, :cond_7

    .line 833
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_7
    if-eqz p1, :cond_14

    .line 835
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "name"

    .line 836
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    :cond_14
    invoke-static {p0, p2}, Lcom/newrelic/agent/android/NewRelic;->recordCustomEvent(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static recordCustomEvent(Ljava/lang/String;Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 819
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 821
    :cond_7
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->recordCustomEvent(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static recordEvent(Ljava/lang/String;Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_7

    .line 805
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 807
    :cond_7
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->recordEvent(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static recordHandledException(Ljava/lang/Exception;)Z
    .registers 2

    .line 875
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 876
    invoke-static {p0, v0}, Lcom/newrelic/agent/android/NewRelic;->recordHandledException(Ljava/lang/Exception;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static recordHandledException(Ljava/lang/Exception;Ljava/util/Map;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 888
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 890
    :cond_7
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/agentdata/AgentDataController;->sendAgentData(Ljava/lang/Exception;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static recordMetric(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 483
    invoke-static {p0, p1, v0, v1}, Lcom/newrelic/agent/android/NewRelic;->recordMetric(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public static recordMetric(Ljava/lang/String;Ljava/lang/String;D)V
    .registers 13

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p2

    .line 479
    invoke-static/range {v0 .. v8}, Lcom/newrelic/agent/android/NewRelic;->recordMetric(Ljava/lang/String;Ljava/lang/String;IDDLcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)V

    return-void
.end method

.method public static recordMetric(Ljava/lang/String;Ljava/lang/String;IDD)V
    .registers 16

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 462
    invoke-static/range {v0 .. v8}, Lcom/newrelic/agent/android/NewRelic;->recordMetric(Ljava/lang/String;Ljava/lang/String;IDDLcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)V

    return-void
.end method

.method public static recordMetric(Ljava/lang/String;Ljava/lang/String;IDDLcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)V
    .registers 12

    .line 466
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NewRelic.recordMeric invoked for name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", totalValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", exclusiveValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", countUnit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", valueUnit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    const-string v0, "recordMetric: category must not be null. If no MetricCategory is applicable, use MetricCategory.NONE."

    .line 469
    invoke-static {p1, v0}, Lcom/newrelic/agent/android/NewRelic;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recordMetric: name must not be empty."

    .line 471
    invoke-static {p0, v0}, Lcom/newrelic/agent/android/NewRelic;->checkEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "recordMetric: count must not be negative."

    .line 473
    invoke-static {p2, v0}, Lcom/newrelic/agent/android/NewRelic;->checkNegative(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 474
    invoke-static/range {p0 .. p8}, Lcom/newrelic/agent/android/Measurements;->addCustomMetric(Ljava/lang/String;Ljava/lang/String;IDDLcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)V

    :cond_5b
    return-void
.end method

.method public static removeAllAttributes()Z
    .registers 1

    .line 775
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->removeAllAttributes()Z

    move-result v0

    return v0
.end method

.method public static removeAttribute(Ljava/lang/String;)Z
    .registers 2

    .line 765
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->removeAttribute(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setAttribute(Ljava/lang/String;D)Z
    .registers 4

    .line 723
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;D)Z

    move-result p0

    return p0
.end method

.method public static setAttribute(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 712
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setAttribute(Ljava/lang/String;Z)Z
    .registers 3

    .line 734
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setInteractionName(Ljava/lang/String;)V
    .registers 1

    .line 433
    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->setRootDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method public static setMaxEventBufferTime(I)V
    .registers 2

    .line 909
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setMaxEventBufferTime(I)V

    return-void
.end method

.method public static setMaxEventPoolSize(I)V
    .registers 2

    .line 900
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setMaxEventPoolSize(I)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)Z
    .registers 3

    .line 785
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {v0, v1, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static shutdown()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Supportability/AgentHealth/Deprecated/Shutdown"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 331
    sget-boolean v0, Lcom/newrelic/agent/android/NewRelic;->started:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    .line 333
    :try_start_e
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getImpl()Lcom/newrelic/agent/android/AgentImpl;

    move-result-object v1

    invoke-interface {v1}, Lcom/newrelic/agent/android/AgentImpl;->stop()V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1d

    .line 335
    sget-object v1, Lcom/newrelic/agent/android/NullAgentImpl;->instance:Lcom/newrelic/agent/android/NullAgentImpl;

    invoke-static {v1}, Lcom/newrelic/agent/android/Agent;->setImpl(Lcom/newrelic/agent/android/AgentImpl;)V

    .line 336
    sput-boolean v0, Lcom/newrelic/agent/android/NewRelic;->started:Z

    goto :goto_26

    :catchall_1d
    move-exception v1

    .line 335
    sget-object v2, Lcom/newrelic/agent/android/NullAgentImpl;->instance:Lcom/newrelic/agent/android/NullAgentImpl;

    invoke-static {v2}, Lcom/newrelic/agent/android/Agent;->setImpl(Lcom/newrelic/agent/android/AgentImpl;)V

    .line 336
    sput-boolean v0, Lcom/newrelic/agent/android/NewRelic;->started:Z

    throw v1

    :cond_26
    :goto_26
    return-void
.end method

.method public static startInteraction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "startInteraction: context must be an Activity instance."

    .line 384
    invoke-static {p0, v0}, Lcom/newrelic/agent/android/NewRelic;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startInteraction: actionName must be an action/method name."

    .line 386
    invoke-static {p1, v0}, Lcom/newrelic/agent/android/NewRelic;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    const-string v1, "."

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/newrelic/agent/android/FeatureFlag;->InteractionTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {p1}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;ZZ)V

    .line 391
    :try_start_38
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getActivityTrace()Lcom/newrelic/agent/android/tracing/ActivityTrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->getId()Ljava/lang/String;

    move-result-object p0
    :try_end_40
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_38 .. :try_end_40} :catch_41

    return-object p0

    :catch_41
    const/4 p0, 0x0

    return-object p0
.end method

.method public static startInteraction(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 409
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingActive()Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez p2, :cond_11

    .line 410
    sget-object p0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string p1, "startInteraction: An interaction is already being traced, and invalidateActiveTrace is false. This interaction will not be traced."

    invoke-interface {p0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 413
    :cond_11
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/NewRelic;->startInteraction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static startInteraction(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "startInteraction: actionName must be an action/method name."

    .line 362
    invoke-static {p0, v0}, Lcom/newrelic/agent/android/NewRelic;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NewRelic.startInteraction invoked. actionName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    const-string v0, "/"

    const-string v1, "."

    .line 365
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->InteractionTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/FeatureFlag;->featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;ZZ)V

    .line 368
    :try_start_2d
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getActivityTrace()Lcom/newrelic/agent/android/tracing/ActivityTrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->getId()Ljava/lang/String;

    move-result-object p0
    :try_end_35
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_2d .. :try_end_35} :catch_36

    return-object p0

    :catch_36
    const/4 p0, 0x0

    return-object p0
.end method

.method public static startMethodTrace(Ljava/lang/String;)V
    .registers 2

    const-string v0, "startMethodTrace: actionName must be an action/method name."

    .line 443
    invoke-static {p0, v0}, Lcom/newrelic/agent/android/NewRelic;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;)V

    return-void
.end method

.method public static withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .registers 2

    .line 65
    new-instance v0, Lcom/newrelic/agent/android/NewRelic;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/NewRelic;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public start(Landroid/content/Context;)V
    .registers 5

    .line 281
    sget-boolean v0, Lcom/newrelic/agent/android/NewRelic;->started:Z

    if-eqz v0, :cond_c

    .line 282
    sget-object p1, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v0, "NewRelic is already running."

    invoke-interface {p1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    return-void

    .line 286
    :cond_c
    :try_start_c
    iget-boolean v0, p0, Lcom/newrelic/agent/android/NewRelic;->loggingEnabled:Z

    if-eqz v0, :cond_16

    new-instance v0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;

    invoke-direct {v0}, Lcom/newrelic/agent/android/logging/AndroidAgentLog;-><init>()V

    goto :goto_1b

    :cond_16
    new-instance v0, Lcom/newrelic/agent/android/logging/NullAgentLog;

    invoke-direct {v0}, Lcom/newrelic/agent/android/logging/NullAgentLog;-><init>()V

    :goto_1b
    invoke-static {v0}, Lcom/newrelic/agent/android/logging/AgentLogManager;->setAgentLog(Lcom/newrelic/agent/android/logging/AgentLog;)V

    .line 287
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    iget v1, p0, Lcom/newrelic/agent/android/NewRelic;->logLevel:I

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->setLevel(I)V

    .line 289
    invoke-static {p1}, Lcom/newrelic/agent/android/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 291
    invoke-direct {p0}, Lcom/newrelic/agent/android/NewRelic;->isInstrumented()Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_3a

    .line 305
    :cond_32
    sget-object p1, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v0, "Failed to detect New Relic instrumentation.  Something likely went wrong during your build process and you should visit http://support.newrelic.com."

    invoke-interface {p1, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    return-void

    .line 292
    :cond_3a
    :goto_3a
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-static {p1, v0}, Lcom/newrelic/agent/android/AndroidAgentImpl;->init(Landroid/content/Context;Lcom/newrelic/agent/android/AgentConfiguration;)V

    const/4 p1, 0x1

    .line 293
    sput-boolean p1, Lcom/newrelic/agent/android/NewRelic;->started:Z

    .line 295
    sget-object p1, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-interface {p1}, Lcom/newrelic/agent/android/logging/AgentLog;->getLevel()I

    move-result p1

    const/4 v0, 0x6

    if-lt p1, v0, :cond_94

    .line 296
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 298
    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_94

    .line 299
    aget-object p1, p1, v1

    .line 300
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agent started from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->audit(Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_8b} :catch_8c

    goto :goto_94

    :catch_8c
    move-exception p1

    .line 309
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Error occurred while starting the New Relic agent!"

    invoke-interface {v0, v1, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_94
    :goto_94
    return-void
.end method

.method public usingCollectorAddress(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .registers 3

    .line 81
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setCollectorHost(Ljava/lang/String;)V

    return-object p0
.end method

.method public usingCrashCollectorAddress(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .registers 3

    .line 86
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setCrashCollectorHost(Ljava/lang/String;)V

    return-object p0
.end method

.method public usingSsl(Z)Lcom/newrelic/agent/android/NewRelic;
    .registers 3

    .line 73
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setUseSsl(Z)V

    return-object p0
.end method

.method public withAnalyticsEvents(Z)Lcom/newrelic/agent/android/NewRelic;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    sget-object p1, Lcom/newrelic/agent/android/FeatureFlag;->AnalyticsEvents:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {p1}, Lcom/newrelic/agent/android/NewRelic;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    return-object p0
.end method

.method public withApplicationBuild(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .registers 3

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 270
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setCustomBuildIdentifier(Ljava/lang/String;)V

    :cond_b
    return-object p0
.end method

.method public withApplicationFramework(Lcom/newrelic/agent/android/ApplicationPlatform;)Lcom/newrelic/agent/android/NewRelic;
    .registers 3

    if-eqz p1, :cond_7

    .line 174
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setApplicationPlatform(Lcom/newrelic/agent/android/ApplicationPlatform;)V

    :cond_7
    return-object p0
.end method

.method public withApplicationVersion(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .registers 3

    if-eqz p1, :cond_7

    .line 162
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setCustomApplicationVersion(Ljava/lang/String;)V

    :cond_7
    return-object p0
.end method

.method public withBuildIdentifier(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Supportability/AgentHealth/Deprecated/WithBuildIdentifier"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/NewRelic;->withApplicationBuild(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object p1

    return-object p1
.end method

.method public withCrashReportingEnabled(Z)Lcom/newrelic/agent/android/NewRelic;
    .registers 3

    .line 132
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setReportCrashes(Z)V

    if-eqz p1, :cond_d

    .line 134
    sget-object p1, Lcom/newrelic/agent/android/FeatureFlag;->CrashReporting:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {p1}, Lcom/newrelic/agent/android/NewRelic;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    goto :goto_12

    .line 136
    :cond_d
    sget-object p1, Lcom/newrelic/agent/android/FeatureFlag;->CrashReporting:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {p1}, Lcom/newrelic/agent/android/NewRelic;->disableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    :goto_12
    return-object p0
.end method

.method public withDefaultInteractions(Z)Lcom/newrelic/agent/android/NewRelic;
    .registers 2

    if-eqz p1, :cond_8

    .line 219
    sget-object p1, Lcom/newrelic/agent/android/FeatureFlag;->DefaultInteractions:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {p1}, Lcom/newrelic/agent/android/NewRelic;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    goto :goto_d

    .line 221
    :cond_8
    sget-object p1, Lcom/newrelic/agent/android/FeatureFlag;->DefaultInteractions:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {p1}, Lcom/newrelic/agent/android/NewRelic;->disableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    :goto_d
    return-object p0
.end method

.method public withHttpResponseBodyCaptureEnabled(Z)Lcom/newrelic/agent/android/NewRelic;
    .registers 2

    if-eqz p1, :cond_8

    .line 149
    sget-object p1, Lcom/newrelic/agent/android/FeatureFlag;->HttpResponseBodyCapture:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {p1}, Lcom/newrelic/agent/android/NewRelic;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    goto :goto_d

    .line 151
    :cond_8
    sget-object p1, Lcom/newrelic/agent/android/FeatureFlag;->HttpResponseBodyCapture:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {p1}, Lcom/newrelic/agent/android/NewRelic;->disableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    :goto_d
    return-object p0
.end method

.method public withInteractionTracing(Z)Lcom/newrelic/agent/android/NewRelic;
    .registers 2

    if-eqz p1, :cond_8

    .line 202
    sget-object p1, Lcom/newrelic/agent/android/FeatureFlag;->InteractionTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {p1}, Lcom/newrelic/agent/android/NewRelic;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    goto :goto_d

    .line 204
    :cond_8
    sget-object p1, Lcom/newrelic/agent/android/FeatureFlag;->InteractionTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {p1}, Lcom/newrelic/agent/android/NewRelic;->disableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    :goto_d
    return-object p0
.end method

.method public withLocationServiceEnabled(Z)Lcom/newrelic/agent/android/NewRelic;
    .registers 3

    .line 96
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setUseLocationService(Z)V

    return-object p0
.end method

.method public withLogLevel(I)Lcom/newrelic/agent/android/NewRelic;
    .registers 2

    .line 120
    iput p1, p0, Lcom/newrelic/agent/android/NewRelic;->logLevel:I

    return-object p0
.end method

.method public withLoggingEnabled(Z)Lcom/newrelic/agent/android/NewRelic;
    .registers 2

    .line 104
    iput-boolean p1, p0, Lcom/newrelic/agent/android/NewRelic;->loggingEnabled:Z

    return-object p0
.end method
