.class Landroid/support/v4/media/session/MediaSessionCompat$2;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/session/MediaSessionCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .registers 2

    .line 419
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$2;->this$0:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    return-void
.end method