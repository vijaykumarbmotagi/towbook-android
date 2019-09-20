.class public final Lcom/getbase/floatingactionbutton/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getbase/floatingactionbutton/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AddFloatingActionButton:[I

.field public static final AddFloatingActionButton_fab_plusIconColor:I = 0x0

.field public static final FloatingActionButton:[I

.field public static final FloatingActionButton_backgroundTint:I = 0x0

.field public static final FloatingActionButton_backgroundTintMode:I = 0x1

.field public static final FloatingActionButton_borderWidth:I = 0x2

.field public static final FloatingActionButton_elevation:I = 0x3

.field public static final FloatingActionButton_fabCustomSize:I = 0x4

.field public static final FloatingActionButton_fabSize:I = 0x5

.field public static final FloatingActionButton_fab_colorDisabled:I = 0x6

.field public static final FloatingActionButton_fab_colorNormal:I = 0x7

.field public static final FloatingActionButton_fab_colorPressed:I = 0x8

.field public static final FloatingActionButton_fab_colorRipple:I = 0x9

.field public static final FloatingActionButton_fab_icon:I = 0xa

.field public static final FloatingActionButton_fab_shadow:I = 0xb

.field public static final FloatingActionButton_fab_size:I = 0xc

.field public static final FloatingActionButton_fab_stroke_visible:I = 0xd

.field public static final FloatingActionButton_fab_title:I = 0xe

.field public static final FloatingActionButton_fab_type:I = 0xf

.field public static final FloatingActionButton_pressedTranslationZ:I = 0x10

.field public static final FloatingActionButton_rippleColor:I = 0x11

.field public static final FloatingActionButton_useCompatPadding:I = 0x12

.field public static final FloatingActionsMenu:[I

.field public static final FloatingActionsMenu_fab_addButtonColorNormal:I = 0x0

.field public static final FloatingActionsMenu_fab_addButtonColorPressed:I = 0x1

.field public static final FloatingActionsMenu_fab_addButtonPlusIconColor:I = 0x2

.field public static final FloatingActionsMenu_fab_addButtonSize:I = 0x3

.field public static final FloatingActionsMenu_fab_addButtonStrokeVisible:I = 0x4

.field public static final FloatingActionsMenu_fab_expandDirection:I = 0x5

.field public static final FloatingActionsMenu_fab_labelStyle:I = 0x6

.field public static final FloatingActionsMenu_fab_labelsPosition:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    .line 55
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0400e2

    aput v2, v0, v1

    sput-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->AddFloatingActionButton:[I

    const/16 v0, 0x13

    .line 57
    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionButton:[I

    const/16 v0, 0x8

    .line 77
    new-array v0, v0, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu:[I

    return-void

    :array_1e
    .array-data 4
        0x7f04003f
        0x7f040040
        0x7f04004e
        0x7f0400c2
        0x7f0400d3
        0x7f0400d4
        0x7f0400da
        0x7f0400db
        0x7f0400dc
        0x7f0400dd
        0x7f0400df
        0x7f0400e3
        0x7f0400e4
        0x7f0400e5
        0x7f0400e6
        0x7f0400e7
        0x7f0401c7
        0x7f0401d3
        0x7f040267
    .end array-data

    :array_48
    .array-data 4
        0x7f0400d5
        0x7f0400d6
        0x7f0400d7
        0x7f0400d8
        0x7f0400d9
        0x7f0400de
        0x7f0400e0
        0x7f0400e1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
