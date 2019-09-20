.class public Lcom/fourmob/datetimepicker/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final PULSE_ANIMATOR_DURATION:I = 0x220


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDaysInMonth(II)I
    .registers 2

    packed-switch p0, :pswitch_data_1c

    .line 37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Month"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_b
    const/16 p0, 0x1e

    return p0

    .line 35
    :pswitch_e
    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_15

    const/16 p0, 0x1d

    goto :goto_17

    :cond_15
    const/16 p0, 0x1c

    :goto_17
    return p0

    :pswitch_18
    const/16 p0, 0x1f

    return p0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_e
        :pswitch_18
        :pswitch_b
        :pswitch_18
        :pswitch_b
        :pswitch_18
        :pswitch_18
        :pswitch_b
        :pswitch_18
        :pswitch_b
        :pswitch_18
    .end packed-switch
.end method

.method public static getPulseAnimator(Landroid/view/View;FF)Lcom/nineoldandroids/animation/ObjectAnimator;
    .registers 12

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 42
    invoke-static {v1, v0}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v1

    const v2, 0x3e8ccccd    # 0.275f

    .line 43
    invoke-static {v2, p1}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object p1

    const v2, 0x3f30a3d7    # 0.69f

    .line 44
    invoke-static {v2, p2}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object p2

    .line 45
    invoke-static {v0, v0}, Lcom/nineoldandroids/animation/Keyframe;->ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v0

    const-string v2, "scaleX"

    const/4 v3, 0x4

    .line 47
    new-array v4, v3, [Lcom/nineoldandroids/animation/Keyframe;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v6, 0x1

    aput-object p1, v4, v6

    const/4 v7, 0x2

    aput-object p2, v4, v7

    const/4 v8, 0x3

    aput-object v0, v4, v8

    invoke-static {v2, v4}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v4, "scaleY"

    .line 48
    new-array v3, v3, [Lcom/nineoldandroids/animation/Keyframe;

    aput-object v1, v3, v5

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    aput-object v0, v3, v8

    invoke-static {v4, v3}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/nineoldandroids/animation/Keyframe;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object p1

    .line 49
    new-array p2, v7, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aput-object v2, p2, v5

    aput-object p1, p2, v6

    invoke-static {p0, p2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Lcom/nineoldandroids/animation/PropertyValuesHolder;)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x220

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    return-object p0
.end method

.method public static isJellybeanOrLater()Z
    .registers 2

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
    .registers 3

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_b

    .line 72
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/fourmob/datetimepicker/Utils;->isJellybeanOrLater()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    .line 66
    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method
