/****************************************************************************
** Meta object code from reading C++ file 'interbotix_control_panel.hpp'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/interbotix_ros_toolboxes/interbotix_xs_toolbox/interbotix_xs_rviz/include/interbotix_xs_rviz/interbotix_control_panel.hpp"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'interbotix_control_panel.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_interbotix_xs_rviz__InterbotixControlPanel_t {
    QByteArrayData data[44];
    char stringdata0[963];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_interbotix_xs_rviz__InterbotixControlPanel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_interbotix_xs_rviz__InterbotixControlPanel_t qt_meta_stringdata_interbotix_xs_rviz__InterbotixControlPanel = {
    {
QT_MOC_LITERAL(0, 0, 42), // "interbotix_xs_rviz::Interboti..."
QT_MOC_LITERAL(1, 43, 19), // "set_robot_namespace"
QT_MOC_LITERAL(2, 63, 0), // ""
QT_MOC_LITERAL(3, 64, 15), // "robot_namespace"
QT_MOC_LITERAL(4, 80, 23), // "send_torque_enable_call"
QT_MOC_LITERAL(5, 104, 6), // "enable"
QT_MOC_LITERAL(6, 111, 20), // "send_home_sleep_call"
QT_MOC_LITERAL(7, 132, 16), // "send_reboot_call"
QT_MOC_LITERAL(8, 149, 17), // "send_opmodes_call"
QT_MOC_LITERAL(9, 167, 19), // "send_getregval_call"
QT_MOC_LITERAL(10, 187, 22), // "update_robot_namespace"
QT_MOC_LITERAL(11, 210, 17), // "update_robot_info"
QT_MOC_LITERAL(12, 228, 29), // "torque_change_cmd_type_single"
QT_MOC_LITERAL(13, 258, 28), // "torque_change_cmd_type_group"
QT_MOC_LITERAL(14, 287, 18), // "torque_change_name"
QT_MOC_LITERAL(15, 306, 20), // "torque_enable_torque"
QT_MOC_LITERAL(16, 327, 21), // "torque_disable_torque"
QT_MOC_LITERAL(17, 349, 11), // "torque_init"
QT_MOC_LITERAL(18, 361, 20), // "homesleep_go_to_home"
QT_MOC_LITERAL(19, 382, 21), // "homesleep_go_to_sleep"
QT_MOC_LITERAL(20, 404, 14), // "homesleep_init"
QT_MOC_LITERAL(21, 419, 29), // "reboot_change_cmd_type_single"
QT_MOC_LITERAL(22, 449, 28), // "reboot_change_cmd_type_group"
QT_MOC_LITERAL(23, 478, 18), // "reboot_change_name"
QT_MOC_LITERAL(24, 497, 25), // "reboot_change_smartreboot"
QT_MOC_LITERAL(25, 523, 7), // "checked"
QT_MOC_LITERAL(26, 531, 20), // "reboot_change_enable"
QT_MOC_LITERAL(27, 552, 11), // "reboot_init"
QT_MOC_LITERAL(28, 564, 29), // "opmodes_change_cmd_type_group"
QT_MOC_LITERAL(29, 594, 30), // "opmodes_change_cmd_type_single"
QT_MOC_LITERAL(30, 625, 19), // "opmodes_change_name"
QT_MOC_LITERAL(31, 645, 19), // "opmodes_change_mode"
QT_MOC_LITERAL(32, 665, 27), // "opmodes_change_profile_type"
QT_MOC_LITERAL(33, 693, 26), // "opmodes_change_profile_vel"
QT_MOC_LITERAL(34, 720, 26), // "opmodes_change_profile_acc"
QT_MOC_LITERAL(35, 747, 12), // "opmodes_init"
QT_MOC_LITERAL(36, 760, 31), // "getregval_change_cmd_type_group"
QT_MOC_LITERAL(37, 792, 32), // "getregval_change_cmd_type_single"
QT_MOC_LITERAL(38, 825, 21), // "getregval_change_name"
QT_MOC_LITERAL(39, 847, 25), // "getregval_change_reg_name"
QT_MOC_LITERAL(40, 873, 17), // "getregval_display"
QT_MOC_LITERAL(41, 891, 35), // "interbotix_xs_msgs::RegisterV..."
QT_MOC_LITERAL(42, 927, 14), // "getregval_init"
QT_MOC_LITERAL(43, 942, 20) // "estop_button_pressed"

    },
    "interbotix_xs_rviz::InterbotixControlPanel\0"
    "set_robot_namespace\0\0robot_namespace\0"
    "send_torque_enable_call\0enable\0"
    "send_home_sleep_call\0send_reboot_call\0"
    "send_opmodes_call\0send_getregval_call\0"
    "update_robot_namespace\0update_robot_info\0"
    "torque_change_cmd_type_single\0"
    "torque_change_cmd_type_group\0"
    "torque_change_name\0torque_enable_torque\0"
    "torque_disable_torque\0torque_init\0"
    "homesleep_go_to_home\0homesleep_go_to_sleep\0"
    "homesleep_init\0reboot_change_cmd_type_single\0"
    "reboot_change_cmd_type_group\0"
    "reboot_change_name\0reboot_change_smartreboot\0"
    "checked\0reboot_change_enable\0reboot_init\0"
    "opmodes_change_cmd_type_group\0"
    "opmodes_change_cmd_type_single\0"
    "opmodes_change_name\0opmodes_change_mode\0"
    "opmodes_change_profile_type\0"
    "opmodes_change_profile_vel\0"
    "opmodes_change_profile_acc\0opmodes_init\0"
    "getregval_change_cmd_type_group\0"
    "getregval_change_cmd_type_single\0"
    "getregval_change_name\0getregval_change_reg_name\0"
    "getregval_display\0interbotix_xs_msgs::RegisterValues&\0"
    "getregval_init\0estop_button_pressed"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_interbotix_xs_rviz__InterbotixControlPanel[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      38,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,  204,    2, 0x0a /* Public */,
       4,    1,  207,    2, 0x0a /* Public */,
       6,    0,  210,    2, 0x0a /* Public */,
       7,    0,  211,    2, 0x0a /* Public */,
       8,    0,  212,    2, 0x0a /* Public */,
       9,    0,  213,    2, 0x0a /* Public */,
      10,    0,  214,    2, 0x09 /* Protected */,
      11,    0,  215,    2, 0x09 /* Protected */,
      12,    0,  216,    2, 0x09 /* Protected */,
      13,    0,  217,    2, 0x09 /* Protected */,
      14,    0,  218,    2, 0x09 /* Protected */,
      15,    0,  219,    2, 0x09 /* Protected */,
      16,    0,  220,    2, 0x09 /* Protected */,
      17,    0,  221,    2, 0x09 /* Protected */,
      18,    0,  222,    2, 0x09 /* Protected */,
      19,    0,  223,    2, 0x09 /* Protected */,
      20,    0,  224,    2, 0x09 /* Protected */,
      21,    0,  225,    2, 0x09 /* Protected */,
      22,    0,  226,    2, 0x09 /* Protected */,
      23,    0,  227,    2, 0x09 /* Protected */,
      24,    1,  228,    2, 0x09 /* Protected */,
      26,    1,  231,    2, 0x09 /* Protected */,
      27,    0,  234,    2, 0x09 /* Protected */,
      28,    0,  235,    2, 0x09 /* Protected */,
      29,    0,  236,    2, 0x09 /* Protected */,
      30,    0,  237,    2, 0x09 /* Protected */,
      31,    1,  238,    2, 0x09 /* Protected */,
      32,    1,  241,    2, 0x09 /* Protected */,
      33,    0,  244,    2, 0x09 /* Protected */,
      34,    0,  245,    2, 0x09 /* Protected */,
      35,    0,  246,    2, 0x09 /* Protected */,
      36,    0,  247,    2, 0x09 /* Protected */,
      37,    0,  248,    2, 0x09 /* Protected */,
      38,    0,  249,    2, 0x09 /* Protected */,
      39,    1,  250,    2, 0x09 /* Protected */,
      40,    1,  253,    2, 0x09 /* Protected */,
      42,    0,  256,    2, 0x09 /* Protected */,
      43,    0,  257,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::Bool,    5,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,   25,
    QMetaType::Void, QMetaType::Bool,   25,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,    2,
    QMetaType::Void, QMetaType::Int,    2,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,    2,
    QMetaType::Void, 0x80000000 | 41,    2,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void interbotix_xs_rviz::InterbotixControlPanel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        InterbotixControlPanel *_t = static_cast<InterbotixControlPanel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->set_robot_namespace((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: _t->send_torque_enable_call((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 2: _t->send_home_sleep_call(); break;
        case 3: _t->send_reboot_call(); break;
        case 4: _t->send_opmodes_call(); break;
        case 5: _t->send_getregval_call(); break;
        case 6: _t->update_robot_namespace(); break;
        case 7: _t->update_robot_info(); break;
        case 8: _t->torque_change_cmd_type_single(); break;
        case 9: _t->torque_change_cmd_type_group(); break;
        case 10: _t->torque_change_name(); break;
        case 11: _t->torque_enable_torque(); break;
        case 12: _t->torque_disable_torque(); break;
        case 13: _t->torque_init(); break;
        case 14: _t->homesleep_go_to_home(); break;
        case 15: _t->homesleep_go_to_sleep(); break;
        case 16: _t->homesleep_init(); break;
        case 17: _t->reboot_change_cmd_type_single(); break;
        case 18: _t->reboot_change_cmd_type_group(); break;
        case 19: _t->reboot_change_name(); break;
        case 20: _t->reboot_change_smartreboot((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 21: _t->reboot_change_enable((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 22: _t->reboot_init(); break;
        case 23: _t->opmodes_change_cmd_type_group(); break;
        case 24: _t->opmodes_change_cmd_type_single(); break;
        case 25: _t->opmodes_change_name(); break;
        case 26: _t->opmodes_change_mode((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 27: _t->opmodes_change_profile_type((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 28: _t->opmodes_change_profile_vel(); break;
        case 29: _t->opmodes_change_profile_acc(); break;
        case 30: _t->opmodes_init(); break;
        case 31: _t->getregval_change_cmd_type_group(); break;
        case 32: _t->getregval_change_cmd_type_single(); break;
        case 33: _t->getregval_change_name(); break;
        case 34: _t->getregval_change_reg_name((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 35: _t->getregval_display((*reinterpret_cast< interbotix_xs_msgs::RegisterValues(*)>(_a[1]))); break;
        case 36: _t->getregval_init(); break;
        case 37: _t->estop_button_pressed(); break;
        default: ;
        }
    }
}

const QMetaObject interbotix_xs_rviz::InterbotixControlPanel::staticMetaObject = {
    { &rviz::Panel::staticMetaObject, qt_meta_stringdata_interbotix_xs_rviz__InterbotixControlPanel.data,
      qt_meta_data_interbotix_xs_rviz__InterbotixControlPanel,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *interbotix_xs_rviz::InterbotixControlPanel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *interbotix_xs_rviz::InterbotixControlPanel::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_interbotix_xs_rviz__InterbotixControlPanel.stringdata0))
        return static_cast<void*>(this);
    return rviz::Panel::qt_metacast(_clname);
}

int interbotix_xs_rviz::InterbotixControlPanel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 38)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 38;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 38)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 38;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
