.class public final Lorg/acra/util/DefaultHttpsSocketFactoryFactory;
.super Ljava/lang/Object;
.source "DefaultHttpsSocketFactoryFactory.java"

# interfaces
.implements Lorg/acra/util/HttpsSocketFactoryFactory;


# static fields
.field public static final INSTANCE:Lorg/acra/util/HttpsSocketFactoryFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Lorg/acra/util/DefaultHttpsSocketFactoryFactory;

    invoke-direct {v0}, Lorg/acra/util/DefaultHttpsSocketFactoryFactory;-><init>()V

    sput-object v0, Lorg/acra/util/DefaultHttpsSocketFactoryFactory;->INSTANCE:Lorg/acra/util/HttpsSocketFactoryFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Lorg/apache/http/conn/scheme/SocketFactory;
    .registers 2

    .line 16
    new-instance p1, Lorg/acra/util/TlsSniSocketFactory;

    invoke-direct {p1}, Lorg/acra/util/TlsSniSocketFactory;-><init>()V

    return-object p1
.end method
