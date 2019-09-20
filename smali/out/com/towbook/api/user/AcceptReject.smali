.class public Lcom/towbook/api/user/AcceptReject;
.super Ljava/lang/Object;
.source "AcceptReject.java"


# instance fields
.field private enableRequests:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/towbook/api/user/AcceptReject;->enableRequests:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getEnableRequest()Ljava/lang/Boolean;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/towbook/api/user/AcceptReject;->enableRequests:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setEnableRequest(Ljava/lang/Boolean;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/towbook/api/user/AcceptReject;->enableRequests:Ljava/lang/Boolean;

    return-void
.end method
