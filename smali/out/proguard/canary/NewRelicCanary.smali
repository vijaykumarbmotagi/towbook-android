.class public Lproguard/canary/NewRelicCanary;
.super Ljava/lang/Object;
.source "NewRelicCanary.java"


# instance fields
.field private sound:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lproguard/canary/NewRelicCanary;->sound:Ljava/lang/String;

    return-void
.end method

.method public static canaryMethod()V
    .registers 2

    .line 14
    new-instance v0, Lproguard/canary/NewRelicCanary;

    const-string v1, "tweet!"

    invoke-direct {v0, v1}, Lproguard/canary/NewRelicCanary;-><init>(Ljava/lang/String;)V

    return-void
.end method
