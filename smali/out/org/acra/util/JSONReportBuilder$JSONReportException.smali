.class public Lorg/acra/util/JSONReportBuilder$JSONReportException;
.super Ljava/lang/Exception;
.source "JSONReportBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/util/JSONReportBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JSONReportException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x9a403705bedfa2bL


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
