.class public final Lorg/acra/collector/CrashReportData;
.super Ljava/util/EnumMap;
.source "CrashReportData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lorg/acra/ReportField;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3912d07a70363e98L


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    const-class v0, Lorg/acra/ReportField;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getProperty(Lorg/acra/ReportField;)Ljava/lang/String;
    .registers 2

    .line 52
    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public toJSON()Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/util/JSONReportBuilder$JSONReportException;
        }
    .end annotation

    .line 56
    invoke-static {p0}, Lorg/acra/util/JSONReportBuilder;->buildJSONReport(Lorg/acra/collector/CrashReportData;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
