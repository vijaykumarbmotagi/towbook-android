.class public Lcom/towbook/api/MyAccount;
.super Ljava/lang/Object;
.source "MyAccount.java"


# instance fields
.field private companyId:Ljava/lang/Integer;

.field private confETag:Ljava/lang/String;

.field private confLastUpdate:J

.field private confVersion:Ljava/lang/String;

.field private configVersion:I

.field private expires:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/towbook/api/MyAccount;->token:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/towbook/api/MyAccount;->username:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/towbook/api/MyAccount;->companyId:Ljava/lang/Integer;

    .line 26
    iput-object p4, p0, Lcom/towbook/api/MyAccount;->expires:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V
    .registers 6

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/towbook/api/MyAccount;->token:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/towbook/api/MyAccount;->username:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/towbook/api/MyAccount;->companyId:Ljava/lang/Integer;

    .line 35
    iput-object p4, p0, Lcom/towbook/api/MyAccount;->expires:Ljava/lang/String;

    .line 36
    iput p5, p0, Lcom/towbook/api/MyAccount;->configVersion:I

    return-void
.end method


# virtual methods
.method public getCompanyId()Ljava/lang/Integer;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/towbook/api/MyAccount;->companyId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConfETag()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/towbook/api/MyAccount;->confETag:Ljava/lang/String;

    return-object v0
.end method

.method public getConfLastUpdate()J
    .registers 3

    .line 103
    iget-wide v0, p0, Lcom/towbook/api/MyAccount;->confLastUpdate:J

    return-wide v0
.end method

.method public getConfVersion()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/towbook/api/MyAccount;->confVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigVersion()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/towbook/api/MyAccount;->configVersion:I

    return v0
.end method

.method public getExpires()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/towbook/api/MyAccount;->expires:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/towbook/api/MyAccount;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 5

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/towbook/api/MyAccount;->username:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/towbook/api/MyAccount;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/towbook/api/MyAccount;->username:Ljava/lang/String;

    .line 73
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTokenExpired()Z
    .registers 3

    .line 82
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy hh:mm:ss a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT"

    .line 83
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 86
    :try_start_10
    invoke-virtual {p0}, Lcom/towbook/api/MyAccount;->getExpires()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_18
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_18} :catch_19

    goto :goto_1e

    :catch_19
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 v0, 0x0

    .line 90
    :goto_1e
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 91
    invoke-virtual {v1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-ltz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0
.end method

.method public setCompanyId(Ljava/lang/Integer;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/towbook/api/MyAccount;->companyId:Ljava/lang/Integer;

    return-void
.end method

.method public setConfETag(Ljava/lang/String;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/towbook/api/MyAccount;->confETag:Ljava/lang/String;

    return-void
.end method

.method public setConfLastUpdate(J)V
    .registers 3

    .line 107
    iput-wide p1, p0, Lcom/towbook/api/MyAccount;->confLastUpdate:J

    return-void
.end method

.method public setConfVersion(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/towbook/api/MyAccount;->confVersion:Ljava/lang/String;

    return-void
.end method

.method public setConfigVersion(I)V
    .registers 2

    .line 44
    iput p1, p0, Lcom/towbook/api/MyAccount;->configVersion:I

    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/towbook/api/MyAccount;->expires:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/towbook/api/MyAccount;->token:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/towbook/api/MyAccount;->username:Ljava/lang/String;

    return-void
.end method
