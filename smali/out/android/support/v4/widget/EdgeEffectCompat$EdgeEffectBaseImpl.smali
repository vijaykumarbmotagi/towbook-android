.class Landroid/support/v4/widget/EdgeEffectCompat$EdgeEffectBaseImpl;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/EdgeEffectCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EdgeEffectBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPull(Landroid/widget/EdgeEffect;FF)V
    .registers 4

    .line 48
    invoke-virtual {p1, p2}, Landroid/widget/EdgeEffect;->onPull(F)V

    return-void
.end method
